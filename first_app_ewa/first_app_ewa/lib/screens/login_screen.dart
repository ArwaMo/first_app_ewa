import 'package:first_app_ewa/screens/category_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff000e3b),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            const SizedBox(
              height: 80,
            ),
            Image.asset(
              'assets/images/quiz-time-logo.png',
              width: 200,
              height: 200,
            ),
            Container(
              width: MediaQuery.of(context).size.width / 1.1,
              height: MediaQuery.of(context).size.height / 1.8,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromARGB(255, 255, 255, 255)),
              child: Padding(
                padding: EdgeInsets.only(top: 40, right: 12, left: 12),
                child: Column(
                  children: [
                    const Text(
                      'LOGIN WITH YOUR ACCOUNT',
                      style: TextStyle(
                          fontSize: 15,
                          color: Color(0xff000e3b),
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    textfieldLogin('Enter your email', Icons.email, false),
                    const SizedBox(
                      height: 18,
                    ),
                    textfieldLogin('Password', Icons.key, true),
                    const SizedBox(
                      height: 30,
                    ),
                    PrimayButton(
                      text: 'SIGN IN',
                      fun: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CategoryScreen()),
                        );
                      },
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/Facebook.png',
                          width: 60,
                          height: 60,
                        ),
                        Image.asset(
                          'assets/images/Google.png',
                          width: 35,
                          height: 35,
                        ),
                        const SizedBox(
                          width: 13,
                        ),
                        Image.asset(
                          'assets/images/LinkedIn.png',
                          width: 35,
                          height: 35,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  TextField textfieldLogin(String text, IconData icon, bool secure) {
    return TextField(
      obscureText: secure,
      decoration: InputDecoration(
          hintText: text,
          focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20))),
          enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20))),
          prefixIcon: Icon(icon)),
    );
  }
}

class PrimayButton extends StatelessWidget {
  const PrimayButton({
    super.key,
    required this.text,
    required this.fun,
  });
  final String text;
  final Function() fun;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: ElevatedButton(
                style: const ButtonStyle(
                    shape: MaterialStatePropertyAll(ContinuousRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)))),
                    padding: MaterialStatePropertyAll(EdgeInsets.all(16)),
                    backgroundColor: MaterialStatePropertyAll(
                      Colors.green,
                    )),
                onPressed: () {
                  fun();
                },
                child: Text(
                  text,
                  style: TextStyle(color: Colors.white),
                ))),
      ],
    );
  }
}
