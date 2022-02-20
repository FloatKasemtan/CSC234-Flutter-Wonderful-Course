import 'package:flutter/material.dart';
import 'package:midterm_test/Widgets/Information.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isRow = MediaQuery.of(context).size.width > 435;
    return isRow
        ? Row(
            children: [
              const Expanded(flex: 2, child: Information()),
              Expanded(
                flex: 3,
                child: Image.asset('images/Capture.PNG', fit: BoxFit.cover),
              )
            ],
          )
        : Column(
            children: [
              const Expanded(child: Information()),
              Expanded(
                child: Image.asset(
                  'images/Capture.PNG',
                ),
              )
            ],
          );
  }
}
