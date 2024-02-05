import 'package:flutter/material.dart';
import 'package:flutter_kids/main/home_page.dart';
import 'package:flutter_kids/routes/routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FrutiApp',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      onGenerateRoute: Routes.onGenerateRoute,
      routes: const {},
      home: const MyHomePage(
        title: 'FrutiApp',
      ),
    );
  }
}