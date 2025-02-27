import 'package:flutter/material.dart';
import 'package:slice_ui_grocery/assets/constants/variables.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Color color;
  final Color textColor;
  final bool isOutline;
  final void Function() onPressed;
  const CustomButton(
      {super.key,
      required this.text,
      this.isOutline = false,
      this.color = ColorsData.primaryColor,
      this.textColor = Colors.black,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          side: BorderSide(
              color: isOutline ? textColor : Colors.transparent,
              width: isOutline ? 2 : 0),
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
              fontSize: 16, color: textColor, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
