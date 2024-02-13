import 'package:flutter/material.dart';
import 'package:flutter_kids/widgets_custom/custom_button.dart';
import 'package:flutter_kids/widgets_custom/custom_text_field.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
    this.bestPoint,
  });
  final String? bestPoint;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        toolbarHeight: 50,
        title: const Row(
          children: [
            Text('Juega Aprendiendo'),
          ],
        ),
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 25, right: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const CustomTextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                focusColor: Colors.transparent,
                hintText: '¿Como te llamas?',
                contentPadding: EdgeInsets.only(left: 25, right: 25),
                hoverColor: Colors.transparent,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            CustomButton(
              onTap: () => Navigator.pushNamed(context, '/basicOperations'),
              title: 'JUGAR',
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.1),
              color: Colors.transparent,
              child: Text(
                'Record: $bestPoint',
                style: const TextStyle(
                  fontSize: 50,
                  fontFamily: AutofillHints.familyName,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
