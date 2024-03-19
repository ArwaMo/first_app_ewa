import 'package:first_app_ewa/screens/splash_screen.dart';
import 'package:flutter/material.dart';

class ScoreScreen extends StatelessWidget {
  const ScoreScreen({super.key});

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
                style: TextStyle(color: Colors.yellow, fontSize: 30),
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
                text: const TextSpan(
                  style: TextStyle(fontSize: 50),
                  children: <TextSpan>[
                    TextSpan(
                        text: '4 ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                        )),
                    TextSpan(text: '/ 10'),
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
                          builder: (context) => const SplashScreen()),
                    );
                  },
                  child: const Text(
                    'Play again',
                    style: TextStyle(color: Colors.green),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
