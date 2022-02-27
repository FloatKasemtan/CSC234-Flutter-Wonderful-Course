import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.controller,
    required this.path,
    required this.placeholder,
    required this.color,
  }) : super(key: key);

  final TextEditingController controller;
  final String path;
  final String placeholder;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(hintText: placeholder),
              controller: controller,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(primary: color),
              onPressed: () {
                Navigator.of(context)
                    .pushNamed(path, arguments: controller.text);
              },
              child: const Text('Show Text')),
        )
      ],
    );
  }
}
