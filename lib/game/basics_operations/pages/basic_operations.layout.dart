import 'package:flutter/material.dart';

class BasicOperationsLayout extends StatelessWidget {
  const BasicOperationsLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Jugador: ',
            style: TextStyle(fontSize: 24),
          ),
          SizedBox(height: 10),
          Text(
            'Puntaje: ',
            style: TextStyle(fontSize: 24),
          ),
          SizedBox(height: 10),
          Text(
            'Vidas: ',
            style: TextStyle(fontSize: 24),
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
