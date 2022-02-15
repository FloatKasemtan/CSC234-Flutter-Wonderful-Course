import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const appTile = "Form Validation Sample";
    return MaterialApp(
      title: appTile,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTile),
        ),
        body: const MyCustomForm(),
      ),
    );
  }
}

class MyCustomForm extends StatefulWidget {
  const MyCustomForm({Key? key}) : super(key: key);

  @override
  _MyCustomFormState createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        TextFormField(validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter some text';
          } else if (value.length < 0) {
            return 'Please enter more than 0 charactrs';
          } else if (!value.contains(RegExp(r'[0-9]'))) {
            return 'The value must contain 1 number';
          } else {
            return null;
          }
        }),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("You entered a message")));
              }
            },
            child: const Text('Submit'),
          ),
        ),
      ]),
    );
  }
}
