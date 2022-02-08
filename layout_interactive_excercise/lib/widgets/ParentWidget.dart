import 'package:flutter/material.dart';
import 'package:layout_interactive_excercise/widgets/IconWrapper.dart';
import 'package:layout_interactive_excercise/widgets/TitleWidget.dart';

class ParentWidget extends StatefulWidget {
  const ParentWidget({Key? key}) : super(key: key);

  @override
  _ParentWidgetState createState() => _ParentWidgetState();
}

class _ParentWidgetState extends State<ParentWidget> {
  int count = 0;

  void onPressHandler() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            TitleWidget(
              fullName: 'Kasemtan Tevasirichokchai',
              affiliation: 'KMUTT, SIT Computer Science',
              count: count,
              onPressHandler: onPressHandler,
            ),
            const IconWrapper(
              phoneNumer: "084-146-4567",
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset('assets/image1.jpg'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "     I'm currently studying at KMUTT in Bachelor of Computer Science. I'm 2nd year student that interested in application development. I'm currently learning about mobile app and web development.",
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "***Quick warning call button is functionable, so if you don't want to lose any credit don't tap on it. If you want to try, then tap on it and instantly hang up the call***",
            style: Theme.of(context).textTheme.bodyText2,
          ),
        )
      ],
    );
  }
}
