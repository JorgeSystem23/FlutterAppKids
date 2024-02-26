import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class AppTextSpeech extends StatelessWidget {
  AppTextSpeech({super.key});

  final FlutterTts flutterTts = FlutterTts();
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text a Voz'),
      ),
      body: Column(
        children: [
          TextField(
            autocorrect: true,
            controller: controller,
            onEditingComplete: () => _speak(controller.text),
          ),
          Center(
            child: TextButton(
              onPressed: () {
                _speak(controller.text);
              },
              child: const Text('Reproducir'),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _speak(String text) async {
    await flutterTts.setLanguage('es-GT');
    await flutterTts.setPitch(1.0);
    await flutterTts.speak(text);
  }
}
