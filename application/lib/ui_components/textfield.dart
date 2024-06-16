import 'package:flutter/material.dart';

class MyTextfield extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool ObscureText;
  final String? Function(String?)? validator;
  final TextStyle? hintStyle;
  final int maxLength;


  MyTextfield({
    required this.controller,
    required this.hintText,
    required this.ObscureText,
    required this.maxLength,
    this.validator,
    this.hintStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextFormField(
        controller: controller,
        obscureText: ObscureText,
         maxLength: maxLength,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: hintStyle,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        validator: validator,
      ),
    );
  }
}