import 'package:flutter/material.dart';
import 'package:flutter_kids/main/pages/home.layout.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
    this.bestPoint,
  });
  final String? bestPoint;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Aprende Jugando',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.yellow,
      ),
      body: HomeLayout(bestPoint: bestPoint),
    );
  }
}
