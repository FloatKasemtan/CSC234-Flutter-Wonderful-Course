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
                child: Image.network(
                    'https://scontent.fbkk12-4.fna.fbcdn.net/v/t39.30808-6/272189473_4868661459916486_3850036912764138839_n.jpg?_nc_cat=103&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeElZlkqRCrMjXY7KJb7Yb1Jzyyi7l8sybHPLKLuXyzJsfdZcIWA3QUMEJ8EbN5XslrmXaXJOtau9zTdbZ5VDr56&_nc_ohc=TFi9ol_FwtUAX-VJesJ&_nc_ht=scontent.fbkk12-4.fna&oh=00_AT8S2xv55Ito13vT-n5yvk9GpTHgPJkBgBs5JPTYS_U4mQ&oe=62014718'),
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
