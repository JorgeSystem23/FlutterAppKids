import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final InputDecoration decoration;
  const CustomTextField({
    super.key,
    required this.decoration,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      child: TextField(
        decoration: decoration,
      ),
    );
  }
}