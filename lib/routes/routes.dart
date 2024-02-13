import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_kids/game/basics_operations/pages/basics_operations.page.dart';
import 'package:flutter_kids/main/pages/home_page.dart';

class Routes {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    if (kDebugMode) {
      print(settings.name);
    }

    Widget page;

    switch (settings.name) {
      case '/':
        page = const HomePage();
        break;
      case '/basicOperations':
        page = const BasicOperationsPage();
        break;
      default:
        page = const Scaffold(
          body: Center(
            child: Text('No se encontro la pagina que quiere navegar!!'),
          ),
        );
    }

    return MaterialPageRoute(
      settings: settings,
      builder: (_) => page,
    );
  }
}
