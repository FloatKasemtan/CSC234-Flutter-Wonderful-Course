import 'package:flutter/material.dart';

class IconsWrapper extends StatelessWidget {
  const IconsWrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildIcons(
          Icons.timelapse,
          "Time:\n250ms",
        ),
        _buildIcons(Icons.search, "ITEMS:\n10k"),
        _buildIcons(Icons.network_cell, "MEANING:\n2+")
      ],
    );
  }

  Widget _buildIcons(IconData icon, String text) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.purple,
          size: 16,
        ),
        Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 12,
          ),
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
