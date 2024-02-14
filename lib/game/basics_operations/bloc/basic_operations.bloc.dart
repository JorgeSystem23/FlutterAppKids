import 'package:flutter/material.dart';

class BasicOperationsBloc extends ChangeNotifier {
  final TextEditingController nameCtr = TextEditingController();
  final int life = 3;

  HomeBloc() {
    init();
  }

  void init() {}
}
