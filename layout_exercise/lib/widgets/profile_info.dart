import 'package:flutter/material.dart';

class ProfileInfo extends StatelessWidget {
  final String street;
  final String tel;

  const ProfileInfo({Key? key, required this.street, required this.tel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          street,
          style: Theme.of(context).textTheme.bodyText1,
        ),
        Text(
          tel,
          style: Theme.of(context).textTheme.bodyText1,
        )
      ],
    );
  }
}
