import 'package:flutter/material.dart';
import 'package:flutter_kids/widgets_custom/custom_button.dart';
import 'package:flutter_kids/widgets_custom/custom_text_field.dart';

void main() {
  runApp(const MyApp());
}

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
      home: const MyHomePage(
        title: 'FrutiApp',
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;
  final String image = 'assets/fresa.png';

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        toolbarHeight: 50,
        title: Row(
          children: [
            // Image.asset(
            //   widget.image,
            //   height: 20,
            //   width: 15,
            // ),
            Text(widget.title),
          ],
        ),
      ),
      backgroundColor: Colors.amberAccent,
      body: Container(
        padding: const EdgeInsets.only(left: 25, right: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const CustomTextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: '¿Como te llamas?',
                contentPadding: EdgeInsets.only(left: 25, right: 25),
                hoverColor: Colors.transparent,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            CustomButton(
              onTap: _incrementCounter,
              title: 'JUGAR',
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              color: Colors.grey,
              padding: const EdgeInsets.all(5),
              child: Text(
                '$_counter',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
