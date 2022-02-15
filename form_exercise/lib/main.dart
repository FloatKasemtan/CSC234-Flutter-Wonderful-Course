import 'package:flutter/material.dart';
import 'package:form_exercise/Widgets/MyCustomForm.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.amber,
        brightness: Brightness.dark
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "TextForm Exercise App",
          ),
        ),
        body: const MyCustomForm(),
      ),
    );
  }
}
