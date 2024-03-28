// ignore_for_file: sort_child_properties_last

import 'package:first_app_ewa/screens/score_screen.dart';
import 'package:flutter/material.dart';

///تنبيه dialog قبل الخروج من الاسئله
class QuestionScreen extends StatefulWidget {
  QuestionScreen({super.key, required this.questin});

  final List questin;

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  int currentIndex = 2;
  int score = 0;
  bool color = false;
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
            Align(
              alignment: AlignmentDirectional.topStart,
              child: Text(
                'Question ${currentIndex - 1}/${widget.questin.length - 2}', //change number
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    fontFamily: 'Mogra'),
              ),
            ),
            const SizedBox(
              height: 13,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Stack(children: [
                Image.asset(
                  '${widget.questin[1]['backgroundImage']}',
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
                        child: Text(
                          '${widget.questin[currentIndex]['ques']}',
                          style: const TextStyle(
                              fontSize: 22,
                              color: Color.fromARGB(255, 255, 255, 255)),
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
            for (int i = 0;
                i < widget.questin[currentIndex]['answers'].length;
                i++)
              buttonAnswerQues(
                widget.questin[currentIndex]['answers'][i]['numbering'],
                widget.questin[currentIndex]['answers'][i]['option'],
                context,
                widget.questin[currentIndex]['answers'][i]['isCorrect'],
              )
          ],
        ),
      ),
    );
  }

  ElevatedButton buttonAnswerQues(
      String text1, String text2, context, bool isTrue) {
    Color buttonColor = Colors.yellow; // Default color
    return ElevatedButton(
      child: Row(
        children: [
          Text(
            text1,
            style: const TextStyle(color: Colors.black, fontFamily: 'Mogra'),
          ),
          const SizedBox(
            width: 8,
          ),
          Expanded(
            child: Text(
              text2,
              style: const TextStyle(
                color: Colors.black,
              ),
            ),
          )
        ],
      ),
      onPressed: () {
        if (isTrue) {
          score += 1;
          buttonColor = Colors.green;
        } else {
          buttonColor = Colors.red;
        }
        setState(() {});
        if (currentIndex <= widget.questin.length - 2) {
          setState(() {
            currentIndex += 1;
          });
        } else {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ScoreScreen(
                score: score,
                question: widget.questin,
              ),
            ),
          );
        }
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(buttonColor),
        side: MaterialStateProperty.all(const BorderSide(color: Colors.grey)),
        shape: MaterialStateProperty.all(
          const ContinuousRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))),
        ),
      ),
    );
  }
}
