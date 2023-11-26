import 'package:flutter/material.dart';

class NormalTextfield extends StatelessWidget {
  final String text;
  final IconButton? suffixIcon;
  const NormalTextfield({required this.text, this.suffixIcon});
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          label: Text(
            text,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          suffixIcon: suffixIcon),
    );
  }
}
