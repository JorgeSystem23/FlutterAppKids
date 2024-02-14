import 'package:flutter/material.dart';
import 'package:flutter_kids/main/bloc/home.bloc.dart';
import 'package:flutter_kids/widgets_custom/custom_button.dart';
import 'package:provider/provider.dart';

class MenuLayout extends StatelessWidget {
  const MenuLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final player = context.read<HomeBloc>().nameCtr;
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
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 15,
            ),
            Text(
              player.text,
              style: const TextStyle(fontSize: 45),
            ),
            const SizedBox(
              height: 25,
            ),
            CustomButton(
              onTap: () =>
                  Navigator.pushReplacementNamed(context, '/basicOperations'),
              title: 'Operaciones Basicas',
            ),
            const SizedBox(
              height: 25,
            ),
            CustomButton(
              onTap: () =>
                  Navigator.pushReplacementNamed(context, '/basicOperations'),
              title: 'Prueba 2',
            ),
            const SizedBox(
              height: 25,
            ),
            CustomButton(
              onTap: () =>
                  Navigator.pushReplacementNamed(context, '/basicOperations'),
              title: 'Prueba 3',
            ),
            const SizedBox(
              height: 25,
            ),
            CustomButton(
              onTap: () =>
                  Navigator.pushReplacementNamed(context, '/basicOperations'),
              title: 'Prueba 4',
            ),
          ],
        ),
      ),
    );
  }
}
