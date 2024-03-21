import 'package:first_app_ewa/screens/category_screen.dart';
import 'package:first_app_ewa/utils/global_variable.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff000e3b),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
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
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          const Text(
                            'LOGIN WITH YOUR ACCOUNT',
                            style: TextStyle(
                                fontSize: 20,
                                color: Color(0xff000e3b),
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Mogra'),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          textfieldLogin('Enter your email', Icons.email, false,
                              (value) {
                            if (value.isEmpty) {
                              return 'Please fill out the field';
                            }
                            if (!RegExp(
                                    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                .hasMatch(value)) {
                              return 'Please write your email correctly';
                            }
                          }, null),
                          const SizedBox(
                            height: 10,
                          ),
                          textfieldLogin('User name', Icons.person, false,
                              (value) {
                            if (value.isEmpty) {
                              return 'Please fill out the field';
                            } else if (!value.startsWith(RegExp(r'[A-Z]'))) {
                              return "username should start with capitale liiter";
                            } else if (value.length < 4) {
                              return 'Please write username greater than 3';
                            }
                          }, controller),
                          const SizedBox(
                            height: 10,
                          ),
                          textfieldLogin('Password', Icons.key, true, (value) {
                            if (value.isEmpty) {
                              return 'Please fill out the field';
                            } else if (value.length < 7) {
                              return 'Please type a password longer than 6';
                            }
                          }, null),
                          const SizedBox(
                            height: 20,
                          ),
                          PrimayButton(
                              text: 'SIGN IN',
                              fun: () {
                                if (_formKey.currentState!.validate()) {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const CategoryScreen()),
                                  );
                                }
                              }),
                          const SizedBox(
                            height: 8,
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
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  TextFormField textfieldLogin(String text, IconData icon, bool secure,
      Function validate, TextEditingController? controller) {
    return TextFormField(
      controller: controller,
      validator: (value) {
        return validate(value);
      },
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
                  style: const TextStyle(
                      color: Colors.white, fontFamily: 'Mogra', fontSize: 15),
                ))),
      ],
    );
  }
}
