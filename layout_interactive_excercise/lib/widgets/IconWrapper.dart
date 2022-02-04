import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

class IconWrapper extends StatelessWidget {
  final String phoneNumer;
  const IconWrapper({Key? key, required this.phoneNumer}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(Theme.of(context).primaryColor, Icons.call,
            phoneNumer, _callNumber, context),
        _buildButtonColumn(Theme.of(context).primaryColor, Icons.near_me,
            'ROUTE', () {}, context),
        _buildButtonColumn(Theme.of(context).primaryColor, Icons.share, 'SHARE',
            () {}, context),
      ],
    );
  }

  Widget _buildButtonColumn(Color color, IconData icon, String label,
      Function onTap, BuildContext context) {
    return InkWell(
      child: Container(
        width: MediaQuery.of(context).size.width / 3,
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: color),
            const SizedBox(
              height: 8.0,
            ),
            FittedBox(
              child: Text(
                label,
                style: TextStyle(
                  fontSize: 12,
                  color: color,
                ),
              ),
            ),
          ],
        ),
      ),
      onTap: () {
        onTap();
      },
    );
  }

  void _callNumber() async {
    var number = phoneNumer.replaceAll('-', '');
    await FlutterPhoneDirectCaller.callNumber(number);
  }
}
