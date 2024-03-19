import 'package:first_app_ewa/screens/login_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 1.0),
        child: FloatingActionButton(
          shape: const CircleBorder(),
          backgroundColor: Colors.yellow,
          onPressed: () {},
          child: const Icon(
            Icons.support_agent_outlined,
            color: Color(0xff000e3b),
          ),
        ),
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/background.jpg'))),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Image(
                  image: AssetImage('assets/images/quiz-time-logo.png'),
                  width: 300,
                  height: 300,
                ),
                const Text(
                  'ITI Quiz App',
                  style: TextStyle(
                      color: Colors.yellow,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Mogra'),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text('We Are Creative, enjoy our App',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontFamily: 'Mogra')),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 4,
                ),
                PrimayButton(
                  text: 'START',
                  fun: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginScreen()),
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
