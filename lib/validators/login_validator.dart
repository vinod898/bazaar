String? validateEmail(String? value) {
  String pattern =
      r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]"
      r"{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]"
      r"{0,253}[a-zA-Z0-9])?)*$";
  RegExp regex = RegExp(pattern);
  if (value == null || value.isEmpty || !regex.hasMatch(value)) {
    return 'Enter a valid email address';
  } else {
    return null;
  }
}

//A function that validate user entered password
String? validatePassword(String? pass) {
// regular expression to check if string
  RegExp passValid = RegExp(r"(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*\W)");
  String _password = pass!.trim();
  if (!passValid.hasMatch(_password)) {
    return 'Enter a valid password';
  } else {
    return null;
  }
}

//A function that validate user re-entered password
String? validateConfirmPassword(String? password, String? confirmPassword) {
  if (password != confirmPassword) {
    return "Password does not match";
  } else {
    return null;
  }
}
