// helpers/database_helper.dart
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import '../models/user.dart';
import '../models/movie.dart';
import '../models/actor.dart';
import '../models/producer.dart';

class DatabaseHelper {
  static final DatabaseHelper _instance = DatabaseHelper._internal();
  factory DatabaseHelper() => _instance;
  static Database? _database;

  DatabaseHelper._internal();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    return openDatabase(
      join(await getDatabasesPath(), 'movieApp.db'),
      onCreate: (db, version) async {
        await _createTables(db);
      },
      onUpgrade: (db, oldVersion, newVersion) async {
        await _dropTables(db);
        await _createTables(db);
      },
      version: 2,
    );
  }

  Future _createTables(Database db) async {
    await db.execute('''
    CREATE TABLE users (
      id INTEGER PRIMARY KEY,
      username TEXT NOT NULL,
      email TEXT NOT NULL,
      passwordHash TEXT NOT NULL,
      favoriteMovies TEXT,
      favoriteActors TEXT
    )
    ''');

    await db.execute('''
    CREATE TABLE actors (
      id INTEGER PRIMARY KEY,
      name TEXT NOT NULL,
      imageUrl TEXT NOT NULL,
      bio TEXT NOT NULL,
      movies TEXT
    )
    ''');

    await db.execute('''
    CREATE TABLE movies (
      id INTEGER PRIMARY KEY,
      title TEXT NOT NULL,
      imageUrl TEXT NOT NULL,
      plot TEXT NOT NULL,
      genre TEXT NOT NULL,
      year INTEGER NOT NULL,
      actors TEXT,
      producers TEXT
    )
    ''');

    await db.execute('''
    CREATE TABLE producers (
      id INTEGER PRIMARY KEY,
      name TEXT NOT NULL,
      imageUrl TEXT NOT NULL,
      bio TEXT NOT NULL,
      movies TEXT
    )
    ''');

    await db.execute('''
    CREATE TABLE movie_actor (
      movie_id INTEGER NOT NULL,
      actor_id INTEGER NOT NULL,
      FOREIGN KEY (movie_id) REFERENCES movies (id),
      FOREIGN KEY (actor_id) REFERENCES actors (id),
      PRIMARY KEY (movie_id, actor_id)
    )
    ''');

    await db.execute('''
    CREATE TABLE movie_producer (
      movie_id INTEGER NOT NULL,
      producer_id INTEGER NOT NULL,
      FOREIGN KEY (movie_id) REFERENCES movies (id),
      FOREIGN KEY (producer_id) REFERENCES producers (id),
      PRIMARY KEY (movie_id, producer_id)
    )
    ''');
  }

  Future<void> _dropTables(Database db) async {
    await db.execute('DROP TABLE IF EXISTS users');
    await db.execute('DROP TABLE IF EXISTS actors');
    await db.execute('DROP TABLE IF EXISTS movies');
    await db.execute('DROP TABLE IF EXISTS producers');
  }

  Future<int> createUser(User user) async {
    final db = await database;

    user.favoriteMovies = [];
    user.favoriteActors = [];

    final userWithHashedPassword = User(
      id: user.id,
      username: user.username,
      email: user.email,
      passwordHash: User.hashPassword(user.passwordHash),
      favoriteMovies: user.favoriteMovies,
      favoriteActors: user.favoriteActors,
    );

    return await db.insert('users', userWithHashedPassword.toJson());
  }

  Future<User?> getUserById(int id) async {
    final db = await database;
    final maps = await db.query('users', where: 'id = ?', whereArgs: [id]);

    if (maps.isNotEmpty) {
      return User.fromJson(maps.first);
    } else {
      return null;
    }
  }

  Future<User?> getUserByUsername(String username) async {
    final db = await database;
    final maps =
        await db.query('users', where: 'username = ?', whereArgs: [username]);

    if (maps.isNotEmpty) {
      return User.fromJson(maps.first);
    } else {
      return null;
    }
  }

  Future<User?> getUserByEmail(String email) async {
    final db = await database;
    final result =
        await db.query('users', where: 'email = ?', whereArgs: [email]);

    if (result.isNotEmpty) {
      return User.fromJson(result.first);
    }
    return null;
  }

  Future<int> updateUser(User user) async {
    final db = await database;
    return await db.update(
      'users',
      user.toJson(),
      where: 'id = ?',
      whereArgs: [user.id],
    );
  }

  Future<int> deleteUser(int id) async {
    final db = await database;
    return await db.delete('users', where: 'id = ?', whereArgs: [id]);
  }

  Future<void> deleteAllUsers() async {
    final db = await database;
    await db.delete('users');
  }

  Future<int> createMovie(Movie movie) async {
    final db = await database;
    return await db.insert('movies', movie.toJson());
  }

  Future<Movie?> getMovie(int id) async {
    final db = await database;
    final maps = await db.query('movies', where: 'id = ?', whereArgs: [id]);

    if (maps.isNotEmpty) {
      return Movie.fromJson(maps.first);
    } else {
      return null;
    }
  }

  Future<List<Movie>> getAllMovies() async {
    final db = await database;
    final result = await db.query('movies');

    return result.map((json) => Movie.fromJson(json)).toList();
  }

  Future<int> updateMovie(Movie movie) async {
    final db = await database;
    return await db.update(
      'movies',
      movie.toJson(),
      where: 'id = ?',
      whereArgs: [movie.id],
    );
  }

  Future<int> deleteMovie(int id) async {
    final db = await database;
    return await db.delete('movies', where: 'id = ?', whereArgs: [id]);
  }

  Future<int> createActor(Actor actor) async {
    final db = await database;
    return await db.insert('actors', actor.toJson());
  }

  Future<Actor?> getActor(int id) async {
    final db = await database;
    final maps = await db.query('actors', where: 'id = ?', whereArgs: [id]);

    if (maps.isNotEmpty) {
      return Actor.fromJson(maps.first);
    } else {
      return null;
    }
  }

  Future<List<Actor>> getAllActors() async {
    final db = await database;
    final result = await db.query('actors');

    return result.map((json) => Actor.fromJson(json)).toList();
  }

  Future<int> updateActor(Actor actor) async {
    final db = await database;
    return await db.update(
      'actors',
      actor.toJson(),
      where: 'id = ?',
      whereArgs: [actor.id],
    );
  }

  Future<int> deleteActor(int id) async {
    final db = await database;
    return await db.delete('actors', where: 'id = ?', whereArgs: [id]);
  }

  Future<int> createProducer(Producer producer) async {
    final db = await database;
    return await db.insert('producers', producer.toJson());
  }

  Future<Producer?> getProducer(int id) async {
    final db = await database;
    final maps = await db.query('producers', where: 'id = ?', whereArgs: [id]);

    if (maps.isNotEmpty) {
      return Producer.fromJson(maps.first);
    } else {
      return null;
    }
  }

  Future<List<Producer>> getAllProducers() async {
    final db = await database;
    final result = await db.query('producers');

    return result.map((json) => Producer.fromJson(json)).toList();
  }

  Future<int> updateProducer(Producer producer) async {
    final db = await database;
    return await db.update(
      'producers',
      producer.toJson(),
      where: 'id = ?',
      whereArgs: [producer.id],
    );
  }

  Future<int> deleteProducer(int id) async {
    final db = await database;
    return await db.delete('producers', where: 'id = ?', whereArgs: [id]);
  }

  Future<int> addMovieToFavorite(int userId, int movieId) async {
    final db = await database;
    final user = await getUserById(userId);

    if (user != null) {
      final favoriteMovies = user.favoriteMovies;
      favoriteMovies.add(movieId);

      return await db.update(
        'users',
        {'favoriteMovies': favoriteMovies.join(',')},
        where: 'id = ?',
        whereArgs: [userId],
      );
    } else {
      return 0;
    }
  }

  Future<int> removeMovieFromFavorite(int userId, int movieId) async {
    final db = await database;
    final user = await getUserById(userId);

    if (user != null) {
      final favoriteMovies = user.favoriteMovies;
      favoriteMovies.remove(movieId);

      return await db.update(
        'users',
        {'favoriteMovies': favoriteMovies.join(',')},
        where: 'id = ?',
        whereArgs: [userId],
      );
    } else {
      return 0;
    }
  }

  Future<int> addActorToFavorite(int userId, int actorId) async {
    final db = await database;
    final user = await getUserById(userId);

    if (user != null) {
      final favoriteActors = user.favoriteActors;
      favoriteActors.add(actorId);

      return await db.update(
        'users',
        {'favoriteActors': favoriteActors.join(',')},
        where: 'id = ?',
        whereArgs: [userId],
      );
    } else {
      return 0;
    }
  }

  Future<int> removeActorFromFavorite(int userId, int actorId) async {
    final db = await database;
    final user = await getUserById(userId);

    if (user != null) {
      final favoriteActors = user.favoriteActors;
      favoriteActors.remove(actorId);

      return await db.update(
        'users',
        {'favoriteActors': favoriteActors.join(',')},
        where: 'id = ?',
        whereArgs: [userId],
      );
    } else {
      return 0;
    }
  }

  Future<void> close() async {
    final db = await database;
    db.close();
  }
}
