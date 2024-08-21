import 'package:flutter/services.dart';

class KValidator {
  // Validate Email
  static String? validateEmail(String email) {
    // Regular expression for validating an email address
    String pattern = r'^[a-zA-Z0-9._]+@[a-zA-Z0-9]+\.[a-zA-Z]+$';
    RegExp regex = RegExp(pattern);
    if (email.isEmpty) {
      return 'Email is required';
    } else if (!regex.hasMatch(email)) {
      return 'Enter a valid email address';
    }
    return null; // Valid email
  }

  // Validate Password
  static String? validatePassword(String password) {
    // Password must be at least 8 characters long and contain at least one digit, one uppercase letter, and one special character
    String pattern = r'^(?=.*[A-Z])(?=.*\d)(?=.*[!@#\$&*~]).{8,}$';
    RegExp regex = RegExp(pattern);
    if (password.isEmpty) {
      return 'Password is required';
    } else if (!regex.hasMatch(password)) {
      return 'Password must be at least 8 characters long, include an uppercase letter, a number, and a special character';
    }
    return null; // Valid password
  }

  // Validate Phone Number
  static String? validatePhoneNumber(String phoneNumber, {String countryCode = '91'}) {
    // Remove any non-numeric characters
    String digits = phoneNumber.replaceAll(RegExp(r'\D'), '');

    // Check if the number is valid for the specified country (10 digits for Indian numbers)
    if (digits.length == 10) {
      digits = '$countryCode$digits';
    }

    // Validate length (should be between 10 to 15 digits for international numbers)
    if (digits.length < 10 || digits.length > 15) {
      return 'Enter a valid phone number';
    }

    return null; // Valid phone number
  }
}
