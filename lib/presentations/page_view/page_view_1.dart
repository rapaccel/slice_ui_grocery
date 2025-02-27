import 'package:flutter/material.dart';
import 'package:slice_ui_grocery/assets/constants/custom_button.dart';
import 'package:slice_ui_grocery/assets/constants/variables.dart';
import 'package:slice_ui_grocery/presentations/authentication/login_page.dart';
import 'package:slice_ui_grocery/presentations/authentication/register_page.dart';
import 'package:slice_ui_grocery/presentations/page_view/page_view_2.dart';

class PageView1 extends StatefulWidget {
  const PageView1({super.key});

  @override
  State<PageView1> createState() => _PageView1State();
}

class _PageView1State extends State<PageView1> {
  final PageController _controller = PageController();
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: ColorsData.primaryColor,
            size: 30,
          ),
          onPressed: () {
            _controller.previousPage(
                duration: const Duration(seconds: 1), curve: Curves.ease);
          },
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView(
              onPageChanged: (index) {
                setState(() {
                  _currentIndex = index;
                });
              },
              controller: _controller,
              children: [
                PageView2(
                  assetsImage: 'page_view_1.png',
                  pageViewIndex: _currentIndex,
                ),
                PageView2(
                  assetsImage: 'page_view_2.png',
                  pageViewIndex: _currentIndex,
                ),
                PageView2(
                  assetsImage: 'page_view_3.png',
                  pageViewIndex: _currentIndex,
                ),
              ],
            ),
          ),
          DotsIndicator(currentIndex: _currentIndex, itemCount: 3),
          if (_currentIndex == 1 || _currentIndex == 0)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: CustomButton(
                text: 'Next',
                textColor: Colors.black,
                onPressed: () {
                  _controller.nextPage(
                      duration: const Duration(seconds: 1), curve: Curves.ease);
                },
              ),
            ),
          const SizedBox(height: 20),
          if (_currentIndex == 2) ...[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: CustomButton(
                text: 'CREATE AN ACCOUNT',
                color: Colors.black,
                textColor: Colors.white,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const RegisterPage()));
                },
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: CustomButton(
                isOutline: true,
                text: 'LOGIN',
                color: Colors.white,
                textColor: Colors.black,
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginPage()));
                },
              ),
            ),
            const SizedBox(height: 20),
          ]
        ],
      ),
    );
  }
}

class DotsIndicator extends StatelessWidget {
  final int currentIndex;
  final int itemCount;

  const DotsIndicator({
    super.key,
    required this.currentIndex,
    required this.itemCount,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(itemCount, (index) {
        bool isActive = index == currentIndex;
        return AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          margin: const EdgeInsets.symmetric(horizontal: 4),
          width: 40,
          height: 10,
          decoration: BoxDecoration(
            color: isActive ? Colors.green : Colors.grey[300],
            borderRadius: BorderRadius.circular(10),
          ),
        );
      }),
    );
  }
}
