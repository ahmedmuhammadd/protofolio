import 'package:flutter/material.dart';
import 'package:portfolio/shared/widgets/title.dart';

import '../Colors/colors.dart';
import '../constant/const.dart';
import 'animated_text.dart';

class MainDetailsWidget extends StatelessWidget {
  final bool? isLink;
  final String title, details;

  const MainDetailsWidget({
    Key? key,
    required this.title,
    required this.details,
    this.isLink = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: defaultPadding / 2,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              bottom: defaultPadding / 2,
            ),
            child: MainTitleWidget(title: title),
          ),
          Container(
            padding: const EdgeInsets.all(defaultPadding),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(defaultRadius),
                color: ColorManger.secondaryColor),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(bottom: 13),
                  child: Icon(Icons.minimize_outlined, color: Colors.white),
                ),
                const SizedBox(width: defaultPadding / 4),
                Flexible(
                  child: AnimatedTextWidget(
                    duration: const Duration(milliseconds: 15),
                    style: isLink!
                        ? details.isNotEmpty
                            ? Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(color: ColorManger.primaryColor)
                            : Theme.of(context).textTheme.bodyMedium!
                        : Theme.of(context).textTheme.bodyMedium!,
                    text1: details,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
