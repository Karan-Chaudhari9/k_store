import 'package:intl/intl.dart';

class KFormatter {
  static String formatDate(DateTime? date) {
    date ??= DateTime.now();
    return DateFormat('dd-MMM-yyyy').format(date);
  }

  static String formatCurrency(double amount) {
    return NumberFormat.currency(locale:  'en_US',symbol:  '\$').format(amount);
  }

  static String formatPhoneNumber(String phoneNumber) {
    // Remove any non-numeric characters
    String digits = phoneNumber.replaceAll(RegExp(r'\D'), '');

    // Add the country code if it's not already included
    if (digits.length == 10) {
      digits = '91$digits';
    } else if (digits.startsWith('0') && digits.length == 11) {
      digits = '91${digits.substring(1)}';
    }

    // Ensure the number has 12 digits (including the country code)
    if (digits.length != 12) {
      throw const FormatException('Invalid phone number');
    }

    // Format the number as +91 XXXXX XXXXX
    return '+${digits.substring(0, 2)} ${digits.substring(2, 7)} ${digits.substring(7)}';
  }

  static String formatInternationalPhoneNumber(String phoneNumber, {String defaultCountryCode = '91'}) {
    // Remove any non-numeric characters
    String digits = phoneNumber.replaceAll(RegExp(r'\D'), '');

    // Handle leading zero in local numbers by adding the default country code
    if (digits.length == 10) {
      digits = '$defaultCountryCode$digits';
    } else if (digits.startsWith('0')) {
      digits = '$defaultCountryCode${digits.substring(1)}';
    }

    // Ensure the number has the correct length with a country code
    if (digits.length < 10 || digits.length > 15) {
      throw const FormatException('Invalid phone number length');
    }

    // Add '+' at the beginning to denote international format
    return '+${digits}';
  }

}
