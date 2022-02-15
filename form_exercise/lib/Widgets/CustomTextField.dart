import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.controller,
    required this.autoFocus,
    required this.helperText,
    required this.reg,
    required this.icon,
  }) : super(key: key);

  final TextEditingController controller;
  final String helperText;
  final bool autoFocus;
  final RegExp reg;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextFormField(
          decoration:
              InputDecoration(hintText: helperText, prefixIcon: Icon(icon)),
          obscureText: helperText == "Password" ? true : false,
          controller: controller,
          autofocus: autoFocus,
          validator: (value) {
            if (value != null && !reg.hasMatch(value)) {
              return 'Please enter valid $helperText';
            }
            return null;
          },
        ),
      ),
    );
  }
}
