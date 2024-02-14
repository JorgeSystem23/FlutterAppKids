import 'package:flutter/material.dart';
import 'package:flutter_kids/game/basics_operations/pages/basic_operations.layout.dart';

class BasicOperationsPage extends StatelessWidget {
  const BasicOperationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        toolbarHeight: 50,
        title: Row(
          children: [
            IconButton(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(Icons.arrow_back_ios),
            ),
            const Text('Operaciones Basicas'),
          ],
        ),
      ),
      backgroundColor: Colors.amberAccent,
      body: const BasicOperationsLayout(),
    );
  }
}
