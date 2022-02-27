import 'package:flutter/material.dart';
import 'package:multipage_assignment/Widgets/CustomTextField.dart';
import 'package:multipage_assignment/Widgets/Detail1.dart';
import 'package:multipage_assignment/Widgets/Detail2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Multipage App',
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: const MyHomePage(title: 'Flutter Multipage App'),
      routes: {
        Detail1.routeName: (context) => const Detail1(),
        Detail2.routeName: (context) => const Detail2(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final myController1 = TextEditingController();
  final myController2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CustomTextField(
            controller: myController1,
            path: Detail1.routeName,
            placeholder: "Textfield01",
            color: Colors.blue,
          ),
          CustomTextField(
            controller: myController2,
            path: Detail2.routeName,
            placeholder: "Textfield02",
            color: Colors.amber,
          ),
        ],
      ),
    );
  }
}
