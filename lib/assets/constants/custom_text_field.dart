import 'package:flutter/material.dart';
import 'package:slice_ui_grocery/assets/constants/variables.dart';

class CustomTextField extends StatefulWidget {
  final TextEditingController controller;
  final String hint;
  final bool isPassword;

  const CustomTextField({
    super.key,
    required this.controller,
    required this.hint,
    this.isPassword = false,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool _isObscured = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      keyboardType: widget.isPassword
          ? TextInputType.visiblePassword
          : TextInputType.text,
      obscureText: widget.isPassword ? _isObscured : false,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.only(left: 20),
        hintText: widget.hint,
        hintStyle: const TextStyle(color: Colors.grey),
        fillColor: Colors.white,
        filled: true,
        border: const OutlineInputBorder(),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.red),
          borderRadius: BorderRadius.circular(20.0),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.red),
          borderRadius: BorderRadius.circular(20.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: ColorsData.primaryColor),
          borderRadius: BorderRadius.circular(20.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: ColorsData.primaryColor),
          borderRadius: BorderRadius.circular(20.0),
        ),
        suffixIcon: widget.isPassword
            ? IconButton(
                icon:
                    Icon(_isObscured ? Icons.visibility_off : Icons.visibility),
                onPressed: () {
                  setState(() {
                    _isObscured = !_isObscured;
                  });
                },
              )
            : null,
      ),
      style: const TextStyle(color: Colors.black),
    );
  }
}
