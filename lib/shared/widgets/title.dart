import 'package:flutter/material.dart';
import 'package:portfolio/shared/Colors/colors.dart';

class MainTitleWidget extends StatelessWidget {
  final bool largeTitle;
  final String title;

  const MainTitleWidget({
    Key? key,
    required this.title,
    this.largeTitle = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: largeTitle
          ? Theme.of(context).textTheme.titleLarge!.copyWith(
                fontSize: 30,
                color: ColorManger.primaryColor,
              )
          : Theme.of(context).textTheme.titleLarge,
    );
  }
}
