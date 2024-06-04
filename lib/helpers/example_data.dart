import 'package:sqflite/sqflite.dart';

class ExampleData {
  static Future<void> insertExampleData(Database db) async {
    await db.insert('movie_actor', {
      'movie_id': 1,
      'actor_id': 1,
    });
    await db.insert('movie_actor', {
      'movie_id': 1,
      'actor_id': 2,
    });
    await db.insert('movie_actor', {
      'movie_id': 2,
      'actor_id': 2,
    });
    await db.insert('movie_producer', {
      'movie_id': 1,
      'producer_id': 1,
    });
    await db.insert('movie_producer', {
      'movie_id': 2,
      'producer_id': 2,
    });
    await db.insert('movie_actor', {
      'movie_id': 3,
      'actor_id': 3,
    });
    await db.insert('movie_actor', {
      'movie_id': 3,
      'actor_id': 4,
    });
    await db.insert('movie_producer', {
      'movie_id': 3,
      'producer_id': 3,
    });
    await db.insert('movie_producer', {
      'movie_id': 3,
      'producer_id': 4,
    });
    await db.insert('movie_actor', {
      'movie_id': 4,
      'actor_id': 5,
    });
    await db.insert('movie_actor', {
      'movie_id': 4,
      'actor_id': 6,
    });
    await db.insert('movie_producer', {
      'movie_id': 4,
      'producer_id': 5,
    });
    await db.insert('movie_producer', {
      'movie_id': 4,
      'producer_id': 6,
    });
    await db.insert('movie_actor', {
      'movie_id': 5,
      'actor_id': 7,
    });
    await db.insert('movie_actor', {
      'movie_id': 5,
      'actor_id': 8,
    });
    await db.insert('movie_producer', {
      'movie_id': 5,
      'producer_id': 7,
    });
    await db.insert('movie_actor', {
      'movie_id': 6,
      'actor_id': 9,
    });
    await db.insert('movie_actor', {
      'movie_id': 6,
      'actor_id': 10,
    });
    await db.insert('movie_producer', {
      'movie_id': 6,
      'producer_id': 7,
    });
    await db.insert('movie_actor', {
      'movie_id': 7,
      'actor_id': 6,
    });
    await db.insert('movie_actor', {
      'movie_id': 7,
      'actor_id': 7,
    });
    await db.insert('movie_producer', {
      'movie_id': 7,
      'producer_id': 7,
    });

    await db.insert('movie_actor', {
      'movie_id': 8,
      'actor_id': 10,
    });
    await db.insert('movie_actor', {
      'movie_id': 8,
      'actor_id': 6,
    });
    await db.insert('movie_producer', {
      'movie_id': 8,
      'producer_id': 5,
    });

    await db.insert('movie_actor', {
      'movie_id': 9,
      'actor_id': 2,
    });
    await db.insert('movie_actor', {
      'movie_id': 9,
      'actor_id': 7,
    });
    await db.insert('movie_producer', {
      'movie_id': 9,
      'producer_id': 1,
    });

    await db.insert('movie_actor', {
      'movie_id': 10,
      'actor_id': 4,
    });
    await db.insert('movie_actor', {
      'movie_id': 10,
      'actor_id': 5,
    });
    await db.insert('movie_producer', {
      'movie_id': 10,
      'producer_id': 5,
    });

    await db.insert('movie_actor', {
      'movie_id': 11,
      'actor_id': 9,
    });
    await db.insert('movie_actor', {
      'movie_id': 11,
      'actor_id': 10,
    });
    await db.insert('movie_producer', {
      'movie_id': 11,
      'producer_id': 3,
    });

    await db.insert('movie_actor', {
      'movie_id': 12,
      'actor_id': 6,
    });
    await db.insert('movie_actor', {
      'movie_id': 12,
      'actor_id': 7,
    });
    await db.insert('movie_producer', {
      'movie_id': 12,
      'producer_id': 7,
    });

    await db.insert('movie_actor', {
      'movie_id': 13,
      'actor_id': 2,
    });
    await db.insert('movie_actor', {
      'movie_id': 13,
      'actor_id': 5,
    });
    await db.insert('movie_producer', {
      'movie_id': 13,
      'producer_id': 7,
    });

    await db.insert('movie_actor', {
      'movie_id': 14,
      'actor_id': 4,
    });
    await db.insert('movie_actor', {
      'movie_id': 14,
      'actor_id': 7,
    });
    await db.insert('movie_producer', {
      'movie_id': 14,
      'producer_id': 6,
    });

    await db.insert('movie_actor', {
      'movie_id': 15,
      'actor_id': 3,
    });
    await db.insert('movie_actor', {
      'movie_id': 15,
      'actor_id': 6,
    });
    await db.insert('movie_producer', {
      'movie_id': 15,
      'producer_id': 5,
    });
  }

  static Future<void> insertActors(Database db) async {
    await db.insert('actors', {
      'id': 1,
      'name': 'Tim Robbins',
      'imageUrl':
          'https://ca-times.brightspotcdn.com/dims4/default/3a5fbe2/2147483647/strip/true/crop/2740x4000+0+0/resize/1024x1495!/format/webp/quality/75/?url=https%3A%2F%2Fcalifornia-times-brightspot.s3.amazonaws.com%2F13%2F51%2Ff1d001394aa6ab37ae929f962a6f%2Fgettyimages-3028067.jpg',
      'bio':
          'Tim Robbins is an American actor, screenwriter, director, and producer. He is best known for his portrayal of Andy Dufresne in the prison drama film The Shawshank Redemption.',
    });
    await db.insert('actors', {
      'id': 2,
      'name': 'Morgan Freeman',
      'imageUrl':
          'https://goldenglobes.com/wp-content/uploads/2023/10/Morgan-Freeman-by-Vera-Anderson.jpg?w=319?w=600',
      'bio':
          'Morgan Freeman is an American actor, director, and narrator. He has received various accolades, including an Academy Award, a Golden Globe Award, and a Screen Actors Guild Award.',
    });
    await db.insert('actors', {
      'id': 3,
      'name': 'Christian Bale',
      'imageUrl':
          'https://upload.wikimedia.org/wikipedia/commons/0/0a/Christian_Bale-7837.jpg',
      'bio':
          'Christian Bale is an English actor known for his intense method acting style. He has received critical acclaim and many awards, including an Academy Award and two Golden Globe Awards.',
    });
    await db.insert('actors', {
      'id': 4,
      'name': 'Heath Ledger',
      'imageUrl':
          'https://hips.hearstapps.com/hmg-prod/images/heath_ledger_getty_images_photo_bob_riha_jr_wireimage_116948085.jpg',
      'bio':
          'Heath Ledger was an Australian actor and director known for his versatility and intense performances. He received numerous awards, including an Academy Award for Best Supporting Actor posthumously for his role as the Joker in The Dark Knight.',
    });
    await db.insert('actors', {
      'id': 5,
      'name': 'John Travolta',
      'imageUrl':
          'https://ro.wikipedia.org/wiki/John_Travolta#/media/Fi%C8%99ier:John_Travolta,_London,_2013_(derivate).jpg',
      'bio':
          'John Travolta is an American actor, singer, and dancer. He rose to fame during the 1970s, appearing in the television series Welcome Back, Kotter and starring in the box office successes Saturday Night Fever and Grease.',
    });
    await db.insert('actors', {
      'id': 6,
      'name': 'Samuel L. Jackson',
      'imageUrl':
          'https://upload.wikimedia.org/wikipedia/commons/2/29/SamuelLJackson.jpg',
      'bio':
          'Samuel L. Jackson is an American actor and producer. He is one of the highest-grossing actors of all time, with his films grossing over 27 billion worldwide.',
    });
    await db.insert('actors', {
      'id': 7,
      'name': 'Elijah Wood',
      'imageUrl':
          'https://upload.wikimedia.org/wikipedia/commons/c/c9/Elijah_Wood_%2847955397556%29_%28cropped%29.jpg',
      'bio':
          'Elijah Wood is an American actor and film producer. He is best known for his portrayal of Frodo Baggins in The Lord of the Rings film trilogy.',
    });
    await db.insert('actors', {
      'id': 8,
      'name': 'Ian McKellen',
      'imageUrl':
          'https://upload.wikimedia.org/wikipedia/commons/1/15/SDCC13_-_Ian_McKellen.jpg',
      'bio':
          'Sir Ian McKellen is an English actor with a career spanning over six decades. He is known for his roles in The Lord of the Rings and X-Men film series, among others.',
    });
    await db.insert('actors', {
      'id': 9,
      'name': 'Tom Hanks',
      'imageUrl':
          'https://upload.wikimedia.org/wikipedia/commons/a/a9/Tom_Hanks_TIFF_2019.jpg',
      'bio':
          'Tom Hanks is an American actor and filmmaker. He is known for his roles in films such as Forrest Gump, Saving Private Ryan, and Cast Away, among others.',
    });
    await db.insert('actors', {
      'id': 10,
      'name': 'Robin Wright',
      'imageUrl':
          'https://upload.wikimedia.org/wikipedia/commons/d/d9/Robin_Wright_Cannes_2017_%28cropped%29.jpg',
      'bio':
          'Robin Wright is an American actress and director. She is best known for her portrayal of Jenny Curran in the film Forrest Gump, for which she received critical acclaim.',
    });
  }

  static Future<void> insertProducers(Database db) async {
    await db.insert('producers', {
      'id': 1,
      'name': 'Frank Darabont',
      'imageUrl':
          'https://images.mubicdn.net/images/cast_member/23653/cache-3959-1478101707/image-w856.jpg?size=300x',
      'bio':
          'Frank Darabont is a Hungarian-American film director, screenwriter, and producer. He is best known for his work on the films The Shawshank Redemption, The Green Mile, and The Mist.',
    });
    await db.insert('producers', {
      'id': 2,
      'name': 'Christopher Nolan',
      'imageUrl':
          'https://cdn.britannica.com/37/255737-050-9BB3FEDA/Christopher-Nolan-Movie-film-director-Oppenheimer-UK-premiere-2023.jpg',
      'bio':
          'Christopher Nolan is a British-American film director, screenwriter, and producer. He is known for his distinctive filmmaking style, which often includes nonlinear storytelling, practical effects, and philosophical themes.',
    });
    await db.insert('producers', {
      'id': 3,
      'name': 'Emma Thomas',
      'imageUrl': 'https://example.com/image.jpg',
      'bio':
          'Emma Thomas is a British film producer known for her collaborations with director Christopher Nolan. She has produced several successful films, including The Dark Knight trilogy, Inception, and Interstellar.',
    });
    await db.insert('producers', {
      'id': 4,
      'name': 'Lawrence Bender',
      'imageUrl': 'https://example.com/image.jpg',
      'bio':
          'Lawrence Bender is an American film producer known for his collaborations with director Quentin Tarantino. He has produced several successful films, including Pulp Fiction, Kill Bill, and Inglourious Basterds.',
    });
    await db.insert('producers', {
      'id': 5,
      'name': 'Quentin Tarantino',
      'imageUrl': 'https://example.com/image.jpg',
      'bio':
          'Quentin Tarantino is an American film director, screenwriter, producer, and actor. He is known for his nonlinear storytelling, stylized violence, and pop culture references. His films include Reservoir Dogs, Pulp Fiction, and Django Unchained.',
    });
    await db.insert('producers', {
      'id': 6,
      'name': 'Peter Jackson',
      'imageUrl': 'https://example.com/image.jpg',
      'bio':
          'Peter Jackson is a New Zealand film director, screenwriter, and film producer. He is best known for directing The Lord of the Rings film trilogy, which received critical acclaim and won numerous awards, including multiple Academy Awards.',
    });
    await db.insert('producers', {
      'id': 7,
      'name': 'Wendy Finerman',
      'imageUrl': 'https://example.com/image.jpg',
      'bio':
          'Wendy Finerman is an American film producer. She is known for producing the film Forrest Gump, which won six Academy Awards, including Best Picture.',
    });
  }

  static Future<void> insertMovies(Database db) async {
    await db.insert('movies', {
      'id': 1,
      'title': 'The Shawshank Redemption',
      'imageUrl': 'https://example.com/image.jpg',
      'plot':
          'Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.',
      'genre': 'Drama',
      'year': 1994,
    });
    await db.insert('movies', {
      'id': 2,
      'title': 'The Godfather',
      'imageUrl': 'https://example.com/image.jpg',
      'plot':
          'The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son.',
      'genre': 'Crime',
      'year': 1972,
    });
    await db.insert('movies', {
      'id': 3,
      'title': 'The Dark Knight',
      'imageUrl': 'https://example.com/image.jpg',
      'plot':
          'When the menace known as The Joker emerges from his mysterious past, he wreaks havoc and chaos on the people of Gotham.',
      'genre': 'Action',
      'year': 2008,
    });
    await db.insert('movies', {
      'id': 4,
      'title': 'Pulp Fiction',
      'imageUrl': 'https://example.com/image4.jpg',
      'plot':
          'The lives of two mob hitmen, a boxer, a gangster and his wife, and a pair of diner bandits intertwine in four tales of violence and redemption.',
      'genre': 'Crime',
      'year': 1994,
    });
    await db.insert('movies', {
      'id': 5,
      'title': 'The Lord of the Rings: The Return of the King',
      'imageUrl': 'https://example.com/image5.jpg',
      'plot':
          'Gandalf and Aragorn lead the World of Men against Sauron\'s army to draw his gaze from Frodo and Sam as they approach Mount Doom with the One Ring.',
      'genre': 'Fantasy',
      'year': 2003,
    });
    await db.insert('movies', {
      'id': 6,
      'title': 'Forrest Gump',
      'imageUrl': 'https://example.com/image6.jpg',
      'plot':
          'The presidencies of Kennedy and Johnson, the Vietnam War, the Watergate scandal and other historical events unfold from the perspective of an Alabama man with an IQ of 75, whose only desire is to be reunited with his childhood sweetheart.',
      'genre': 'Drama',
      'year': 1994,
    });
    await db.insert('movies', {
      'id': 7,
      'title': 'Inception',
      'imageUrl': 'https://example.com/image7.jpg',
      'plot':
          'A thief who steals corporate secrets through the use of dream-sharing technology is given the inverse task of planting an idea into the mind of a C.E.O.',
      'genre': 'Action',
      'year': 2010,
    });
    await db.insert('movies', {
      'id': 8,
      'title': 'The Matrix',
      'imageUrl': 'https://example.com/image8.jpg',
      'plot':
          'A computer hacker learns from mysterious rebels about the true nature of his reality and his role in the war against its controllers.',
      'genre': 'Action',
      'year': 1999,
    });
    await db.insert('movies', {
      'id': 9,
      'title': 'The Lord of the Rings: The Fellowship of the Ring',
      'imageUrl': 'https://example.com/image9.jpg',
      'plot':
          'A meek Hobbit from the Shire and eight companions set out on a journey to destroy the powerful One Ring and save Middle-earth from the Dark Lord Sauron.',
      'genre': 'Fantasy',
      'year': 2001,
    });
    await db.insert('movies', {
      'id': 10,
      'title': 'The Silence of the Lambs',
      'imageUrl': 'https://example.com/image10.jpg',
      'plot':
          'A young F.B.I. cadet must receive the help of an incarcerated and manipulative cannibal killer to help catch another serial killer, a madman who skins his victims.',
      'genre': 'Thriller',
      'year': 1991,
    });
    await db.insert('movies', {
      'id': 11,
      'title': 'Fight Club',
      'imageUrl': 'https://example.com/image11.jpg',
      'plot':
          'An insomniac office worker and a devil-may-care soap maker form an underground fight club that evolves into much more.',
      'genre': 'Drama',
      'year': 1999,
    });
    await db.insert('movies', {
      'id': 12,
      'title': 'The Lion King',
      'imageUrl': 'https://example.com/image12.jpg',
      'plot':
          'Lion prince Simba and his father are targeted by his bitter uncle, who wants to ascend the throne himself.',
      'genre': 'Animation',
      'year': 1994,
    });
    await db.insert('movies', {
      'id': 13,
      'title': 'Jurassic Park',
      'imageUrl': 'https://example.com/image13.jpg',
      'plot':
          'During a preview tour, a theme park suffers a major power breakdown that allows its cloned dinosaur exhibits to run amok.',
      'genre': 'Sci-Fi',
      'year': 1993,
    });
    await db.insert('movies', {
      'id': 14,
      'title': 'Inglourious Basterds',
      'imageUrl': 'https://example.com/image14.jpg',
      'plot':
          'In Nazi-occupied France during World War II, a plan to assassinate Nazi leaders by a group of Jewish U.S. soldiers coincides with a theatre owner\'s vengeful plans for the same.',
      'genre': 'War',
      'year': 2009,
    });
    await db.insert('movies', {
      'id': 15,
      'title': 'Avatar',
      'imageUrl': 'https://example.com/image15.jpg',
      'plot':
          'A paraplegic Marine dispatched to the moon Pandora on a unique mission becomes torn between following his orders and protecting the world he feels is his home.',
      'genre': 'Sci-Fi',
      'year': 2009,
    });
  }
}
