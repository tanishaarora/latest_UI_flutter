class Validation {
  static String? validateEmail(String value) {
    String pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regExp = RegExp(pattern);
    if (value.isEmpty) {
      return 'Please enter email';
    } else if (!regExp.hasMatch(value)) {
      return 'Invalid Email';
    } else {
      return null;
    }
  }

  static String? validatePassword(String value) {
    if (value.isEmpty) {
      return "Password can't be empty";
    } else if (value.length < 6) {
      return 'Password must be longer than 6 characters';
    }
    return null;
  }

  static String? validateName(String value) {
    String pattern = r'(^[a-zA-Z ]*$)';
    RegExp regExp = RegExp(pattern);
    if (value.isEmpty) {
      return 'Please enter name';
    } else if (!regExp.hasMatch(value)) {
      return 'Name must be a-z and A-Z';
    }
    return null;
  }

  static String? validateSurName(String value) {
    String pattern = r'(^[a-zA-Z ]*$)';
    RegExp regExp = RegExp(pattern);
    if (value.isEmpty) {
      return 'Please enter last name';
    } else if (!regExp.hasMatch(value)) {
      return 'Name must be a-z and A-Z';
    }
    return null;
  }

  static String? validateMobile(String value) {
    String pattern = r'(^[0-9]*$)';
    RegExp regExp = RegExp(pattern);
    if (value.isEmpty) {
      return 'Please enter phone number';
    } else if (value.length != 10) {
      return 'Mobile number must 10 digits';
    } else if (!regExp.hasMatch(value)) {
      return 'Mobile Number must be digits';
    }
    return null;
  }
}