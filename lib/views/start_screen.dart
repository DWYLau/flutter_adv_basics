import "package:flutter/material.dart";

class StartScreen extends StatelessWidget {
  const StartScreen({required this.startQuiz, super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.all(30),
            child: Image.asset(
              "assets/images/quiz-logo.png",
              height: 250,
              width: 250,
              color: const Color.fromARGB(155, 7, 6, 6),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              "Learn flutter the fun way!",
              style: TextStyle(
                color: Colors.black,
                fontSize: 28,
              ),
            ),
          ),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.black,
              backgroundColor: const Color.fromARGB(255, 84, 190, 240),
            ),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text("Start Quiz!"),
          )
        ],
      ),
    );
  }
}
