import 'package:flutter/material.dart';
import 'package:midterm_test/Widgets/IconsWrapper.dart';
import 'package:midterm_test/Widgets/StarGroup.dart';

class Information extends StatelessWidget {
  const Information({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                StarGroup(),
                Text(
                  '10k results',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                )
              ],
            )),
        const SizedBox(
          height: 8,
        ),
        const Text(
          'Solution means',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
              '1. a means of solving a problem or dealing with a difficult situation.\n2. a liquid mixture in which the minor component (the solute)is uniformly distributed within the major component (the solvent)'),
        ),
        const IconsWrapper()
      ],
    );
  }
}
