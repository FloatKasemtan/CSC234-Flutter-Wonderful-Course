import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:layout_interactive_excercise/widgets/ParentWidget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static final ValueNotifier<ThemeMode> themeNotifier =
      ValueNotifier(ThemeMode.light);
  @override
  Widget build(BuildContext context) {
    const TextTheme textTheme = TextTheme(
      headline1: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      bodyText1: TextStyle(
          fontSize: 14, fontWeight: FontWeight.w400, letterSpacing: 0.9),
      subtitle1: TextStyle(color: Colors.black38, fontSize: 14),
      bodyText2: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
    );

    const TextTheme textThemeDark = TextTheme(
      headline1: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      bodyText1: TextStyle(
          fontSize: 14, fontWeight: FontWeight.w400, letterSpacing: 0.9),
      subtitle1: TextStyle(color: Colors.white38, fontSize: 14),
      bodyText2: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
    );

    return ValueListenableBuilder<ThemeMode>(
        valueListenable: themeNotifier,
        builder: (_, ThemeMode currentMode, __) {
          return MaterialApp(
            // Remove the debug banner
            debugShowCheckedModeBanner: false,
            title: '63130500237 Flutter app',
            theme: ThemeData(
              brightness: Brightness.light,
              primarySwatch: Colors.blue,
              textTheme: textTheme,
            ),
            darkTheme: ThemeData(
              brightness: Brightness.dark,
              primaryColor: Colors.amber,
              textTheme: textThemeDark,
            ),
            themeMode: currentMode,
            home: const Home(),
          );
        });
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isDarkMode = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const ParentWidget(),
      appBar: AppBar(
        title: const Text("Layout interactive"),
        actions: [
          IconButton(
              icon: Icon(isDarkMode ? Icons.light_mode : Icons.dark_mode),
              onPressed: () {
                setState(() {
                  isDarkMode = !isDarkMode;
                });
                MyApp.themeNotifier.value =
                    MyApp.themeNotifier.value == ThemeMode.light
                        ? ThemeMode.dark
                        : ThemeMode.light;
              })
        ],
      ),
    );
  }
}
