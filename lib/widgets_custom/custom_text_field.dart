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
      color: Colors.transparent,
      child: TextField(
        decoration: decoration,
      ),
    );
  }
}