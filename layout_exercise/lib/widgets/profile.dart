import "package:flutter/material.dart";
import 'package:layout_exercise/widgets/profile_header.dart';
import 'package:layout_exercise/widgets/profile_icons.dart';
import 'package:layout_exercise/widgets/profile_info.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: const [
          ProfileHeader(),
          SizedBox(
            height: 8.0,
          ),
          ProfileInfo(
            street: "123 Main Street",
            tel: "(415) 555-0198",
          ),
          SizedBox(
            height: 8.0,
          ),
          ProfileIcons()
        ],
      ),
    );
  }
}
