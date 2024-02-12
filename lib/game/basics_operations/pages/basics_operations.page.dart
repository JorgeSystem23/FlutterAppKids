import 'package:flutter/material.dart';

class BasicOperationsPage extends StatelessWidget {
  const BasicOperationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        toolbarHeight: 50,
        title: const Row(
          children: [
            // Image.asset(
            //   widget.image,
            //   height: 20,
            //   width: 15,
            // ),
            Text('Operaciones Basicas'),
          ],
        ),
      ),
      backgroundColor: Colors.amberAccent,
      body: const Padding(
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
      ),
    );
  }
}
