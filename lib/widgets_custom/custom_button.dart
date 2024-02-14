import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onTap;
  final String title;
  final ButtonStyle? style;

  const CustomButton({
    super.key,
    required this.onTap,
    required this.title,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          15,
        ),
      ),
      child: ElevatedButton(
        onPressed: onTap,
        style: style,
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
