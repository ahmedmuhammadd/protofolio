import 'package:flutter/material.dart';

import '../../../../shared/Colors/colors.dart';
import '../../../../shared/constant/const.dart';

class AnimatedLinearIndicator extends StatelessWidget {
  final double percentage;
  final String skillName;

  const AnimatedLinearIndicator(
      {Key? key, required this.percentage, required this.skillName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 4),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            skillName,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.titleSmall!.copyWith(
                  fontSize: 12,
                  color: Colors.grey,
                ),
          ),
          // const SizedBox(height: defaultPadding / 6),
          Row(
            children: [
              Expanded(
                child: SizedBox(
                  height: 5,
                  child: TweenAnimationBuilder(
                    tween: Tween<double>(begin: 0, end: percentage),
                    duration: defaultDuration,
                    builder: (context, double value, child) {
                      return LinearProgressIndicator(
                        value: value,
                        backgroundColor: ColorManger.darkColor,
                        color: (value * 100) >= 50
                            ? Theme.of(context).primaryColor
                            : Theme.of(context).primaryColor.withOpacity(.5),
                      );
                    },
                  ),
                ),
              ),
              const SizedBox(width: defaultPadding),
              SizedBox(
                width: 40,
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    '${(percentage * 100).toInt()} %',
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
