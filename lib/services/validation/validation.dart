class Expressions {
  static final email = RegExp(r"^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$");
  static final otp = RegExp(r"^[0-9][0-9][0-9][0-9]+$");
}

class Validate {
  static String isEmail(String value) {
    // Check for empty or no match with regexp
    if (value.isEmpty || !Expressions.email.hasMatch(value))
      return "Invalid email address";
    // All good!
    return null;
  }

  static String isPassword(String value) {
    // Check for empty or at least 6 characters
    if (value.isEmpty || value.length <= 6)
      return "Must have at least 6 characters";
    // All good!
    return null;
  }

  static String isOTP(String value) {
    // Check for empty or at least 4 characters
    if (value.isEmpty || value.length <= 4)
      return "Must have at least 4 characters";
    if (!Expressions.otp.hasMatch(value)) return "Must be a number";
    // All good!
    return null;
  }

  static String isMoreThan(String value) {
    // Check for empty or at least 3 characters
    if (value.isEmpty || value.length < 3)
      return "Must have at least 3 characters";
    // All good!
    return null;
  }
}
