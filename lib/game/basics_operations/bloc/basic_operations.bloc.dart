import 'package:flutter/material.dart';
import 'package:flutter_kids/widgets_custom/custom_dialog.dart';

class BasicOperationsBloc extends ChangeNotifier {
  final TextEditingController nameCtr = TextEditingController();
  int life = 3;
  int score = 0;

  void calculateScore() {
    score += 10;
    notifyListeners();
  }

  void calculateLife(BuildContext context) {
    if (life > 0) {
      life--;

      notifyListeners();
    } else if (life == 0) {
      Navigator.pop(context);
    }
  }

  void exitGame(BuildContext context) => AppDialogs.showConfirmation(
        context,
        '¿Deseas abandonar la solicitud? La información ingresada se perderá por completo.',
        (context) => Navigator.pop(context),
        okText: 'Salir',
        cancelText: 'Cancelar',
      );
}
