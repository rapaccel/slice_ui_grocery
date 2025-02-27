import 'dart:async';

import 'package:flutter/material.dart';
import 'package:slice_ui_grocery/assets/constants/variables.dart';
import 'package:slice_ui_grocery/presentations/page_view/page_view_1.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    _navigateToLogin();
  }

  void _navigateToLogin() {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const PageView1()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsData.primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.only(left: 30),
              child: Image.asset(
                'lib/assets/images/logo_grocery.png',
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Grocery Store',
              style: TextStyle(
                  fontSize: 38,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
