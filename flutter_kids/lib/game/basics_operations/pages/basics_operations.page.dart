import 'package:flutter/material.dart';

class BasicOperationsPage extends StatelessWidget {
  const BasicOperationsPage({super.key, required this.title});

    final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            // Image.asset(
            //   widget.image,
            //   height: 20,
            //   width: 15,
            // ),
            Text(title),
          ],
        ),
      ),
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
        ],
      ),
    );
  }
}