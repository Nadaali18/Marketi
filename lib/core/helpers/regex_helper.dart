import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RegexHelper {

  static String? validateName(String? name) {
    if (name == null || name.isEmpty) {
      return 'Name is required';
    } else if (!RegExp(r'^[a-zA-Z]{2,}$').hasMatch(name)) {
      return 'Name must contain only letters and be at least 2 characters long';
    }
    return ' ';
  }

  static String? validateUsername(String? username) {
    if (username == null || username.isEmpty) {
      return 'Username is required';
    } else if (!RegExp(r'^[a-zA-Z0-9_]+$').hasMatch(username)) {
      return 'Username can only contain letters, numbers, and underscores';
    }
    return ' ';
  }

  static String? validateEmail(String? email) {
    if (email == null || email.isEmpty) {
      return 'Email is required';
    } else if (!RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$')
        .hasMatch(email)) {
      return 'Enter a valid email address';
    }
    return ' ';
  }

  static String? validatePassword(String? password) {
    if (password == null || password.isEmpty) {
      return 'Password is required';
    } else if (password.length < 8) {
      return 'Password must be at least 8 characters long';
    } else if (!RegExp(r'(?=.*[A-Z])').hasMatch(password)) {
      return 'Password must contain at least one uppercase letter';
    } else if (!RegExp(r'(?=.*[a-z])').hasMatch(password)) {
      return 'Password must contain at least one lowercase letter';
    } else if (!RegExp(r'(?=.*\d)').hasMatch(password)) {
      return 'Password must contain at least one number';
    } else if (!RegExp(r'(?=.*[@$!%*?&])').hasMatch(password)) {
      return 'Password must contain at least one special character (@\$!%*?&)';
    }
    return ' ';
  }

  static void submitForm(GlobalKey<FormState> key, BuildContext context, String location) {
    if (key.currentState == null || !key.currentState!.validate()) {
      return; 
    }
   context.go(location); 
}

  

}
