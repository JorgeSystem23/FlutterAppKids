import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final InputDecoration decoration;
  final TextEditingController controller;
  final bool isEmptyField;
  const CustomTextField({
    super.key,
    required this.decoration,
    required this.controller,
    this.isEmptyField = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: TextField(
        decoration: decoration,
        controller: controller,
      ),
    );
  }
}
