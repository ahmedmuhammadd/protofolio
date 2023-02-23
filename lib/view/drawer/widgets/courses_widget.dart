import 'package:flutter/material.dart';
import 'package:portfolio/shared/constant/const.dart';
import 'package:portfolio/shared/widgets/title.dart';

class CoursesWidget extends StatelessWidget {
  const CoursesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding * 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Align(
            alignment: Alignment.centerLeft,
            child: MainTitleWidget(title: 'Courses'),
          ),
          SizedBox(height: defaultPadding / 4),
          Text(
              '-- The Complete 2022 Flutter & Dart Development Course [Arabic]    [UDEMY]'),
          SizedBox(height: 10),
          Text(
              '-- The Complete Flutter Development Guide [2022 Edition]    [UDEMY]'),
        ],
      ),
    );
  }
}
