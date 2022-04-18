String? validateTask(String? value) {
  const String pattern = r"^[.!#$%&'*+<>:;,%@()(/=?^_`{|}~-]";

  if (value == null || value.isEmpty) {
    return 'Name is required';
  }
  final RegExp regex = RegExp(pattern);
  if (regex.hasMatch(value)) {
    return 'Enter a valid name';
  }
  return null;
}
