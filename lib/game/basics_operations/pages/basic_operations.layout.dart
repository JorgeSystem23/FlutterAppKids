import 'package:flutter/material.dart';
import 'package:flutter_kids/game/basics_operations/bloc/basic_operations.bloc.dart';
import 'package:flutter_kids/main/bloc/home.bloc.dart';
import 'package:provider/provider.dart';

class BasicOperationsLayout extends StatelessWidget {
  const BasicOperationsLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final player = context.read<HomeBloc>().nameCtr;
    final bloc = context.read<BasicOperationsBloc>();
    return PopScope(
      canPop: (false),
      onPopInvoked: (didPop) {
        if (didPop) return;
        bloc.exitGame(context);
      },
      child: Padding(
        padding: const EdgeInsets.only(top: 16.0, left: 16.0),
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
            Row(
              children: [
                const Text(
                  'Vidas: ',
                  style: TextStyle(fontSize: 24),
                ),
                const SizedBox(width: 10),
                Row(
                  children: List.generate(
                    bloc.life,
                    (lifes) => const Icon(
                      Icons.heart_broken_outlined,
                      color: Colors.redAccent,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
