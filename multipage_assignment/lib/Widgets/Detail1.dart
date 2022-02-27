import 'package:flutter/material.dart';

class Detail1 extends StatelessWidget {
  const Detail1({Key? key}) : super(key: key);
  static const routeName = '/detail1';

  @override
  Widget build(BuildContext context) {
    final text = ModalRoute.of(context)?.settings.arguments as String;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("This is Detail1 page"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              text != ""
                  ? Text(text)
                  : const Text("There is no input in textfield01"),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    'back',
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
