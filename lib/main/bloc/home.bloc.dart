import 'package:flutter/material.dart';

class HomeBloc extends ChangeNotifier {
  final BuildContext context;
  final TextEditingController nameCtr = TextEditingController();
  final bool isEmptyField = false;

  HomeBloc({required this.context}) {
    init();
  }

  void init() {
    isValidName();
  }

  bool isValidName() {
    return (nameCtr.text.isNotEmpty);
  }

  void navigateNextPage(BuildContext context) {
    if (isValidName() == true) {
      Navigator.pushReplacementNamed(context, '/menu');
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Digita tu nombre para poder seguir!!'),
        ),
      );
    }
  }
}
