import 'package:flutter/material.dart';

class TextFieldInput extends StatelessWidget {
  final TextEditingController controller;
  final bool isPassword;
  final String hintText;
  final Widget? suffixIcon;
  final TextInputType keyboardType;

  // Constructor to intialize the widget properties
  const TextFieldInput({
    super.key,
    required this.controller,
    required this.isPassword,
    required this.hintText,
    this.suffixIcon,
    required this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: keyboardType,
      controller: controller,
      cursorColor: const Color.fromARGB(218, 226, 37, 34),
      decoration: InputDecoration(
        hintText: hintText,
        border: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent, style: BorderStyle.none), // Transparent border
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent, style: BorderStyle.none), // Transparent border when focused
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent, style: BorderStyle.none), // Transparent border when enabled
        ),
        filled: true, // Background color enabled
        contentPadding: const EdgeInsets.all(8),
        suffixIcon: suffixIcon,
      ),
      textInputAction: TextInputAction.next,
      obscureText: isPassword, // Hide text if it's a password
    );
  }
}
