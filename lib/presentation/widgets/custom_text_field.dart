import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final String labelText;
  final int maxLines;
  final TextInputType keyboardType;
  const CustomTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.labelText,
    this.maxLines = 1,
    this.keyboardType = TextInputType.text,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
      child: TextField(
        keyboardType: keyboardType,
        controller: controller,
        decoration: InputDecoration(
          hintText: hintText,
          labelText: labelText,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: colorScheme.onPrimaryContainer,
              width: 1,
            ),
          ),
          contentPadding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
        ),
        style: const TextStyle(fontSize: 14),
        textAlignVertical: TextAlignVertical.center,
        cursorHeight: 20,
        maxLines: maxLines,
      ),
    );
  }
}
