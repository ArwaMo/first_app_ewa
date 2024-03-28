import 'package:first_app_ewa/screens/category_screen.dart';
import 'package:first_app_ewa/screens/login_screen.dart';
import 'package:first_app_ewa/screens/splash_screen.dart';
import 'package:first_app_ewa/utils/global_variable.dart';
import 'package:flutter/material.dart';

class ScoreScreen extends StatelessWidget {
  const ScoreScreen({super.key, required this.score, required this.question});
  final int score;
  final List question;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff000e3b),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              const SizedBox(
                height: 80,
              ),
              Image.asset(
                'assets/images/win.png',
                width: 300,
                height: 300,
              ),
              const Text(
                'Congratuations',
                style: TextStyle(
                    color: Colors.yellow, fontSize: 30, fontFamily: 'Mogra'),
              ),
              Text(
                controllerUserName.text,
                style: const TextStyle(
                  color: Colors.yellow,
                  fontSize: 17,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              const Text(
                'YOUR SCORE',
                style: TextStyle(color: Colors.white, fontSize: 17),
              ),
              const SizedBox(
                height: 10,
              ),
              RichText(
                text: TextSpan(
                  style: const TextStyle(fontSize: 50),
                  children: <TextSpan>[
                    TextSpan(
                        text: '$score ',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                        )),
                    TextSpan(text: '/ ${question.length - 2}'),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'You did a greate job, Learn more by taking another quiz',
                style: TextStyle(color: Colors.white, fontSize: 17),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 20,
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CategoryScreen()),
                    );
                  },
                  child: const Text(
                    'Play again',
                    style: TextStyle(
                        color: Colors.green, fontFamily: 'Mogra', fontSize: 16),
                  )),
              SizedBox(
                height: 10,
              ),
              PrimayButton(
                text: 'SIGN OUT',
                fun: () {
                  controllerUserName.clear();
                  controllerEmail.clear();
                  controllerPass.clear();
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SplashScreen()),
                  );
                },
                color: 0xffE50000,
              )
            ],
          ),
        ),
      ),
    );
  }
}
