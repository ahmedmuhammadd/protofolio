import 'package:flutter/material.dart';

import '../../../../shared/Colors/colors.dart';
import '../../../../shared/constant/const.dart';

class AnimatedCircularProgressIndicator extends StatelessWidget {
  final double percentage;
  final String skillName;

  const AnimatedCircularProgressIndicator(
      {Key? key, required this.percentage, required this.skillName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(right: defaultPadding / 2),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: TweenAnimationBuilder(
                tween: Tween<double>(begin: 0, end: percentage),
                duration: defaultDuration,
                builder: (context, double value, child) {
                  return Stack(
                    fit: StackFit.expand,
                    children: [
                      CircularProgressIndicator(
                        value: value,
                        backgroundColor: ColorManger.darkColor,
                        color: (value * 100) >= 50
                            ? Theme.of(context).primaryColor
                            : Theme.of(context).primaryColor.withOpacity(.5),
                      ),
                      Center(
                          child: Text(
                        '${(value * 100).toInt()}%',
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      ))
                    ],
                  );
                },
              ),
            ),
            const SizedBox(height: defaultPadding / 2),
            Text(
              skillName,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
