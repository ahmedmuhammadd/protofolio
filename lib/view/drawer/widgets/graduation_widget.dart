import 'package:flutter/material.dart';
import 'package:portfolio/shared/constant/const.dart';
import 'package:portfolio/shared/widgets/title.dart';

class GraduationWidget extends StatelessWidget {
  const GraduationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding * 2),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            MainTitleWidget(
              title: 'Graduation',
            ),
            Text('Computer Science El Shorouk Academy'),
            Text('2017  -  2022'),
          ],
        ),
      ),
    );
  }
}
