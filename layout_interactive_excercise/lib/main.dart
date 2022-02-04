import 'package:flutter/material.dart';
import 'package:layout_interactive_excercise/widgets/ParentWidget.dart';

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
      theme: ThemeData(
        textTheme: const TextTheme(
            headline1: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            bodyText1: TextStyle(
                fontSize: 14, fontWeight: FontWeight.w400, letterSpacing: 0.9),
            subtitle1: TextStyle(color: Colors.black38, fontSize: 14),
            bodyText2:
                TextStyle(fontWeight: FontWeight.bold, color: Colors.red)),
        primarySwatch: Colors.blue,
      ),
      home: const Scaffold(body: ParentWidget()),
    );
  }
}
