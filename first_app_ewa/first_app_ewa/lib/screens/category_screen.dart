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
              height: MediaQuery.of(context).size.height / 9,
            ),
            const Text(
              'CHOOSE CATEGORY',
              style: TextStyle(color: Colors.yellow, fontSize: 43),
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
                    categoryQuiz(context, Colors.yellow, 'Programming quiz',
                        'assets/images/programmer.png'),
                    categoryQuiz(context, Colors.blue, 'History quiz',
                        'assets/images/History.png'),
                    categoryQuiz(context, Colors.red, 'Sport quiz',
                        'assets/images/sport.png'),
                  ],
                )),
          ],
        ),
      ),
    );
  }

  Expanded categoryQuiz(
      BuildContext context, Color color, String text, String image) {
    return Expanded(
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const QuestionScreen()),
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
                  text,
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                )),
              ],
            )),
      ),
    );
  }
}
