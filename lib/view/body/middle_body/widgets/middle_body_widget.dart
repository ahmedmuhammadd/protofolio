import 'package:flutter/material.dart';
import 'package:portfolio/shared/Colors/colors.dart';
import 'package:portfolio/shared/constant/const.dart';
import 'package:portfolio/shared/responsive_utls/responsive.dart';

class StatisticsBodyWidget extends StatelessWidget {
  final int number;
  final String text;

  const StatisticsBodyWidget(
      {Key? key, required this.number, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TweenAnimationBuilder(
          tween: IntTween(begin: 0, end: number),
          duration: defaultDuration,
          builder: (context, int value, child) => DefaultTextStyle(
            style: Responsive.isMobile(context)
                ? Theme.of(context).textTheme.titleSmall!.copyWith(
                      color: ColorManger.primaryColor,
                    )
                : Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: ColorManger.primaryColor,
                      // fontWeight: FontWeight.bold,
                    ),
            child: Row(
              children: [
                Text('$value'),
                const Text('K+'),
              ],
            ),
          ),
        ),
        const SizedBox(width: defaultPadding / 4),
        Text(
          text,
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
              fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ],
    );
  }
}
