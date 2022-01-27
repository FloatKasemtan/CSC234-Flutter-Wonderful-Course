import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.only(right: 8.0, top: 0),
            child: Icon(
              Icons.account_circle,
              size: 55,
            ),
          ),
          _buildColumn(context),
        ],
      ),
    );
  }

  Widget _buildColumn(BuildContext ctx) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          "Flutter McFlutter",
          style: Theme.of(ctx).textTheme.headline1,
        ),
        Text(
          "Experienced App Developer",
          style: Theme.of(ctx).textTheme.bodyText1,
        ),
      ],
    );
  }
}
