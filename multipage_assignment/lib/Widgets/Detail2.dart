import 'package:flutter/material.dart';

class Detail2 extends StatelessWidget {
  const Detail2({Key? key}) : super(key: key);
  static const routeName = '/detail2';

  @override
  Widget build(BuildContext context) {
    final text = ModalRoute.of(context)?.settings.arguments as String;
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.amber),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("This is Detail2 page"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              text != ""
                  ? Text(text)
                  : const Text("There is no input in textfield02"),
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
