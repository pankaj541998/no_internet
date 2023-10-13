import 'package:flutter/material.dart';

class PrimaryTextField extends StatelessWidget {
  final String labelTex;
  final TextEditingController? controller;
  final bool obscureText;
  const PrimaryTextField({
    super.key,
    required this.controller,
    required this.labelTex,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      controller: controller,
      decoration: InputDecoration(
          labelText: labelTex,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(7))),
    );
  }
}
