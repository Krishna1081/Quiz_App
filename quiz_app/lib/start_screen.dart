import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Image(
            image: AssetImage("assets/images/quiz-logo.png"),
            width: 300,
            color: Color.fromARGB(150, 255, 255, 255),
          ),
          const SizedBox(
            height: 80,
          ),
          const Text(
            "Learn flutter the fun way!",
            style: TextStyle(
                fontSize: 24, color: Color.fromARGB(255, 224, 200, 249)),
          ),
          const SizedBox(
            height: 20,
          ),
          OutlinedButton.icon(
            onPressed: () {
              startQuiz();
            },
            style: OutlinedButton.styleFrom(
              primary: Colors.purple,
            ),
            icon: const Icon(
              Icons.arrow_right_alt,
              color: Color.fromARGB(255, 224, 200, 249),
            ),
            label: const Text(
                style: TextStyle(
                  color: Color.fromARGB(255, 224, 200, 249),
                ),
                "Start Quiz"),
          )
        ],
      ),
    );
  }
}
