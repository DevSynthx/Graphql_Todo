import 'package:flutter/material.dart';

class TextFormInput extends StatelessWidget {
  const TextFormInput({
    Key? key,
    required this.controller,
    this.autovalidateMode,
    required this.validator,
    this.labelText,
    required this.obscureText,
    this.suffixIcon,
    this.prefixIcon,
  }) : super(key: key);

  final String? labelText;
  final bool obscureText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final TextEditingController controller;
  final AutovalidateMode? autovalidateMode;
  final String? Function(String?) validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        controller: controller,
        cursorColor: Colors.blue,
        autovalidateMode: autovalidateMode,
        obscureText: obscureText,
        decoration: InputDecoration(
            suffixIcon: suffixIcon,
            prefixIcon: prefixIcon,
            errorBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blue),
            ),
            focusedErrorBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blue),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.orangeAccent.shade100),
            ),
            contentPadding:
                const EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
            floatingLabelBehavior: FloatingLabelBehavior.never,
            labelText: labelText,
            labelStyle: const TextStyle(fontSize: 16, color: Colors.black45),
            border: const OutlineInputBorder(borderSide: BorderSide())),
        validator: validator);
  }
}
