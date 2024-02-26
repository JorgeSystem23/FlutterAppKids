import 'package:flutter/material.dart';
import 'package:flutter_kids/game/basics_operations/bloc/basic_operations.bloc.dart';
import 'package:flutter_kids/game/basics_operations/pages/basic_operations.layout.dart';
import 'package:provider/provider.dart';

class BasicOperationsPage extends StatelessWidget {
  const BasicOperationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<BasicOperationsBloc>(
      create: (context) => BasicOperationsBloc(),
      builder: (context, child) => Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          toolbarHeight: 50,
          title: const Text('Operaciones Basicas'),
        ),
        backgroundColor: Colors.amberAccent,
        body: const BasicOperationsLayout(),
      ),
    );
  }
}
