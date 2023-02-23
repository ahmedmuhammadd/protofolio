import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class AnimatedTextWidget extends StatelessWidget {
  final String text1;
  final String text2;
  final String text3;
  final bool repeatForever;
  final TextStyle style;
  final Duration? duration;
  final int? totalRepeatCount;

  const AnimatedTextWidget({
    Key? key,
    required this.style,
    this.duration = const Duration(milliseconds: 50),
    this.totalRepeatCount = 1,
    this.repeatForever = false,
    required this.text1,
    this.text2 = '',
    this.text3 = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      totalRepeatCount: totalRepeatCount ?? 1,
      repeatForever: repeatForever ?? false,
      animatedTexts: [
        TyperAnimatedText(
          text1,
          textStyle: style,
          speed: duration!,
        ),
        if (text2.length > 1)
          TyperAnimatedText(
            text2,
            textStyle: style,
            speed: duration!,
          ),
        if (text3.length > 1)
          TyperAnimatedText(
            text3,
            textStyle: style,
            speed: duration!,
          ),
      ],
    );
  }
}
