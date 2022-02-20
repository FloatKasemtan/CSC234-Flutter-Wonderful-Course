import 'package:flutter/material.dart';
import 'package:midterm_test/Widgets/Information.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool isClick = true;
  @override
  Widget build(BuildContext context) {
    bool isRow = MediaQuery.of(context).size.width > 435;
    return isRow
        ? Row(
            children: [
              const Expanded(flex: 2, child: Information()),
              Expanded(
                flex: 3,
                child: InkWell(
                  onTap: () {
                    setState(() {
                      isClick = !isClick;
                    });
                  },
                  child: Image.asset(
                      isClick ? 'images/Capture.PNG' : "images/Capturescr.PNG",
                      fit: BoxFit.cover),
                ),
              )
            ],
          )
        : Column(
            children: [
              const Expanded(child: Information()),
              Expanded(
                child: InkWell(
                  onTap: () {
                    setState(() {
                      isClick = !isClick;
                    });
                  },
                  child: Image.asset(
                    isClick ? 'images/Capture.PNG' : "images/Capturescr.PNG",
                  ),
                ),
              )
            ],
          );
  }
}
