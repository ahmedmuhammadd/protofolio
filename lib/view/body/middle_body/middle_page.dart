import 'package:flutter/material.dart';
import 'package:portfolio/shared/Colors/colors.dart';
import 'package:portfolio/shared/constant/const.dart';
import 'package:portfolio/shared/responsive_utls/responsive.dart';

import 'middle_services.dart';

class MiddlePageScreen extends StatelessWidget {
  const MiddlePageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorManger.secondaryColor,
        borderRadius: BorderRadius.circular(defaultRadius),
      ),
      margin: const EdgeInsets.symmetric(vertical: defaultPadding / 2),
      padding: const EdgeInsets.symmetric(vertical: defaultPadding / 2),
      child: Responsive.isMobileLarge(context)
          ? Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MiddleServices().statisticsList[0],
                    MiddleServices().statisticsList[1],
                  ],
                ),
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  MiddleServices().statisticsList[2],
                  MiddleServices().statisticsList[3],
                ]),
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: MiddleServices().statisticsList,
            ),
    );
  }
}
