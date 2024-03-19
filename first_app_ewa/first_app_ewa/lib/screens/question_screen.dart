// ignore_for_file: sort_child_properties_last

import 'package:first_app_ewa/screens/score_screen.dart';
import 'package:flutter/material.dart';

class QuestionScreen extends StatelessWidget {
  const QuestionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            const Align(
              alignment: AlignmentDirectional.topStart,
              child: Text(
                'Question 13/50',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
            const SizedBox(
              height: 13,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Stack(children: [
                Image.asset(
                  'assets/images/background_programming.jpg',
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 5.5,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        constraints:
                            const BoxConstraints(maxWidth: 300, maxHeight: 121),
                        child: const Text(
                          'What is the capital of Suadi Arabia?',
                          style: TextStyle(fontSize: 22, color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                )
              ]),
            ),
            const SizedBox(
              height: 20,
            ),
            buttonAnswerQues('A.', 'Cairo', context),
            buttonAnswerQues('B.', 'Tunisia', context),
            buttonAnswerQues('C.', 'Riyadh', context),
            buttonAnswerQues('D.', 'Manama', context),
          ],
        ),
      ),
    );
  }

  ElevatedButton buttonAnswerQues(String text1, String text2, context) {
    return ElevatedButton(
      child: Row(
        children: [
          Text(
            text1,
            style: const TextStyle(color: Colors.black),
          ),
          const SizedBox(
            width: 20,
          ),
          Text(
            text2,
            style: const TextStyle(color: Colors.black),
          )
        ],
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ScoreScreen()),
        );
      },
      style: const ButtonStyle(
        backgroundColor:
            MaterialStatePropertyAll(Color.fromARGB(213, 254, 235, 63)),
        side: MaterialStatePropertyAll(BorderSide(color: Colors.grey)),
        shape: MaterialStatePropertyAll(ContinuousRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)))),
      ),
    );
  }
}
