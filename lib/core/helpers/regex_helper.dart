import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RegexHelper {

  static String? validateName(String? name) {
    if (name == null || name.isEmpty) {
      return 'Name is required';
    } else if (!RegExp(r'^[A-Z][a-zA-Z ]{1,}$').hasMatch(name)) {
      return 'Name must start with a capital letter and contain only letters and spaces';
    }
    return null; 
}


  static String? validateUsername(String? username) {
    if (username == null || username.isEmpty) {
      return 'Username is required';
    } else if (!RegExp(r'^[a-zA-Z0-9_]+$').hasMatch(username)) {
      return 'Username can only contain letters, numbers, and underscores';
    }
    return null;
  }

  static String? validateEmail(String? email) {
    if (email == null || email.isEmpty) {
      return 'Email is required';
    } else if (!RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$')
        .hasMatch(email)) {
      return 'Enter a valid email address';
    }
    return null;
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
    return null;
  }
 
  static String? validateConfirmPassword(String? confirmPassword, String? originalPassword) {
    if (confirmPassword == null || confirmPassword.isEmpty) {
      return 'Confirmation password is required';
    } else if (confirmPassword != originalPassword) {
      return 'Passwords do not match';
    }
      return null;
  }

  static String? validatePhoneNumber(String? phone) {
    if (phone == null || phone.isEmpty) {
      return 'Phone number is required';
    } else if (!RegExp(r'^\+?[0-9]{10,15}$').hasMatch(phone)) {
      return 'Enter a valid phone number (10-15 digits, optional + at the start)';
    }
    return null;
  }

  static void submitForm(GlobalKey<FormState> key, BuildContext context, String location) {
    if (key.currentState == null || !key.currentState!.validate()) {
      return; 
    }
      key.currentState!.save();
      context.go(location);
  }

}
