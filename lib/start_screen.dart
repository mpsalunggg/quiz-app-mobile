import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function () startQuiz;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'images/quiz_background.png',
          width: 250,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          'Welcome to quiz apps',
          style: GoogleFonts.poppins(
              textStyle: const TextStyle(
                  color: Color.fromARGB(255, 0, 159, 191),
                  letterSpacing: .5,
                  fontWeight: FontWeight.w600),
              fontSize: 20),
        ),
        const SizedBox(
          height: 10,
        ),
        TextButton.icon(
          onPressed: () {
            startQuiz();
          },
          style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: const Color.fromARGB(255, 0, 159, 191),
              padding: const EdgeInsets.only(
                  top: 8, bottom: 8, left: 12, right: 12)),
          icon: const Icon(Icons.ads_click_sharp),
          label: const Text('Start Quiz'),
        ),
      ],
    );
  }
}
