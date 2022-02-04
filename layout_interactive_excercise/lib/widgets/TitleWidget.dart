import 'package:flutter/material.dart';

class TitleWidget extends StatelessWidget {
  final String fullName;
  final String affiliation;
  final int count;
  final Function onPressHandler;

  const TitleWidget(
      {Key? key,
      required this.fullName,
      required this.affiliation,
      required this.count,
      required this.onPressHandler})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                fullName,
                style: Theme.of(context).textTheme.headline1,
              ),
              const SizedBox(
                height: 8.0,
              ),
              Text(
                affiliation,
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ],
          ),
          _iconBuilder(count, context),
        ],
      ),
    );
  }

  Widget _iconBuilder(int count, BuildContext context) {
    return Row(children: [
      InkWell(
        borderRadius: BorderRadius.circular(50),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(
            count % 2 == 0 ? Icons.person : Icons.person_outline,
            color: Theme.of(context).primaryColor,
          ),
        ),
        onTap: () {
          onPressHandler();
        },
      ),
      Text(
        count.toString(),
        style: Theme.of(context).textTheme.bodyText1,
      ),
    ]);
  }
}
