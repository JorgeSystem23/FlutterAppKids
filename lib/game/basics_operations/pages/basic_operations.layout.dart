import 'package:flutter/material.dart';
import 'package:flutter_kids/main/bloc/home.bloc.dart';
import 'package:provider/provider.dart';

class BasicOperationsLayout extends StatelessWidget {
  const BasicOperationsLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final player = context.read<HomeBloc>().nameCtr;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Jugador: ${player.text}',
            style: const TextStyle(fontSize: 24),
          ),
          const SizedBox(height: 10),
          const Text(
            'Puntaje: ',
            style: TextStyle(fontSize: 24),
          ),
          const SizedBox(height: 10),
          const Text(
            'Vidas: ',
            style: TextStyle(fontSize: 24),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
