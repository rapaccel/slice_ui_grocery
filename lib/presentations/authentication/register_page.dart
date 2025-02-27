import 'package:flutter/material.dart';
import 'package:slice_ui_grocery/assets/constants/custom_button.dart';
import 'package:slice_ui_grocery/assets/constants/custom_text_field.dart';
import 'package:slice_ui_grocery/presentations/authentication/login_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();

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
                'lib/assets/images/bg-auth.png',
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
                          'Create Your Account',
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
                    Row(
                      children: [
                        Expanded(
                          child: CustomTextField(
                            controller: _firstNameController,
                            hint: 'First Name',
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: CustomTextField(
                            controller: _lastNameController,
                            hint: 'Last Name',
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
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
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50.0),
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: const TextSpan(
                          text: 'By tapping Sign up you accept all ',
                          style: TextStyle(color: Colors.black),
                          children: [
                            TextSpan(
                              text: 'terms ',
                              style: TextStyle(
                                  color: Colors.orange,
                                  fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text: 'and ',
                              style: TextStyle(color: Colors.black),
                            ),
                            TextSpan(
                              text: 'condition',
                              style: TextStyle(
                                  color: Colors.orange,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    CustomButton(
                        text: 'CREATE AN ACCOUNT',
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LoginPage()));
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
