import 'package:flutter/material.dart';

class PageView2 extends StatelessWidget {
  final String assetsImage;
  final int pageViewIndex;
  const PageView2(
      {super.key, required this.assetsImage, required this.pageViewIndex});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: pageViewIndex == 0 ? 150 : 100),
            Image.asset(
              'lib/assets/images/$assetsImage',
              width: pageViewIndex == 0 ? 300 : 400,
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                pageViewIndex == 0
                    ? 'Welcome to Fresh Fruits'
                    : 'We provide best quality Fruits to your family',
                style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 10),
            if (pageViewIndex == 0) ...[
              const Text('Grocery application',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                  textAlign: TextAlign.center),
              const SizedBox(height: 10),
            ],
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                  'lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey),
                  textAlign: TextAlign.center),
            ),
          ],
        ),
      ),
    );
  }
}
