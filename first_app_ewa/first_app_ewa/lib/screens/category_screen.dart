import 'package:first_app_ewa/Data/all_questions.dart';
import 'package:first_app_ewa/screens/question_screen.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff000e3b),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 6,
            ),
            const Text(
              'CHOOSE CATEGORY',
              style: TextStyle(
                  color: Colors.yellow, fontSize: 43, fontFamily: 'Mogra'),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 60,
            ),
            Container(
                width: MediaQuery.of(context).size.width / 1.1,
                height: MediaQuery.of(context).size.height / 1.7,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255)),
                child: Column(
                  children: [
                    categoryQuiz(context, Colors.yellow,
                        'assets/images/programmer.png', programmingQuestions),
                    categoryQuiz(context, Colors.blue,
                        'assets/images/History.png', historyQuestions),
                    categoryQuiz(context, Colors.red, 'assets/images/sport.png',
                        sportQuestions),
                  ],
                )),
          ],
        ),
      ),
    );
  }

  Expanded categoryQuiz(
      BuildContext context, Color color, String image, List question) {
    return Expanded(
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => QuestionScreen(
                      questin: question,
                    )),
          );
        },
        child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 5.5,
            decoration: BoxDecoration(color: color),
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Image.asset(
                  image,
                  width: 100,
                  height: 100,
                ),
                const SizedBox(
                  height: 5,
                ),
                Center(
                    child: Text(
                  question[0]['quesName'],
                  style: const TextStyle(fontSize: 20, fontFamily: 'Mogra'),
                )),
              ],
            )),
      ),
    );
  }
}
