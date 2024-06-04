import '../models/user.dart';
import 'database_helper.dart';

class AuthHelper {
  final DatabaseHelper _dbHelper = DatabaseHelper();

  // Register a new user
  Future<String> registerUser(User user) async {
    // Check if the email or username already exists
    final existingUserByEmail = await _dbHelper.getUserByEmail(user.email);
    if (existingUserByEmail != null) {
      return 'Email already exists';
    }

    final existingUserByUsername =
        await _dbHelper.getUserByUsername(user.username);
    if (existingUserByUsername != null) {
      return 'Username already exists';
    }

    // Create the user in the database
    final userId = await _dbHelper.createUser(user);
    if (userId > 0) {
      return 'User registered successfully';
    } else {
      return 'Failed to register user';
    }
  }

  // Login a user
  Future<String> loginUser(String email, String password) async {
    // Get the user by email
    final user = await _dbHelper.getUserByEmail(email);
    if (user == null) {
      return 'User not found';
    }

    // Check if the hashed password matches
    if (user.verifyPassword(password)) {
      return 'Login successful';
    } else {
      return 'Incorrect password';
    }
  }
}
