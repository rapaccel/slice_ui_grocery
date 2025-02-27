import 'package:flutter/material.dart';
import 'package:slice_ui_grocery/assets/constants/custom_text_field.dart';
import 'package:slice_ui_grocery/presentations/bottom_nav/bottom_nav_page.dart';

import '../../assets/constants/custom_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            SizedBox(
              height: 350,
              child: Image.asset(
                'lib/assets/images/bg-signin.png',
                fit: BoxFit.fill,
                width: double.infinity,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(15),
              child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                    size: 30,
                  )),
            ),
            Positioned(
              top: 300,
              left: 0,
              right: 0,
              child: Container(
                padding: const EdgeInsets.all(25),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                ),
                height: MediaQuery.of(context).size.height - 300,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Sign In',
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        Container(
                            padding: const EdgeInsets.all(10),
                            decoration: const BoxDecoration(
                                color: Colors.black, shape: BoxShape.circle),
                            child: const Center(
                              child: Text(
                                'X',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16),
                              ),
                            ))
                      ],
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    CustomTextField(
                      controller: _emailController,
                      hint: 'Email',
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomTextField(
                      controller: _passwordController,
                      hint: 'Password',
                      isPassword: true,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50.0),
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Forgot Password?',
                          style: TextStyle(
                              color: Colors.orange,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    CustomButton(
                        text: 'Sign In',
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const BottomNavPage()));
                        }),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
