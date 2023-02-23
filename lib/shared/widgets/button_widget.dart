import 'package:flutter/material.dart';

import '../Colors/colors.dart';
import '../constant/const.dart';

class MainButtonWidget extends StatelessWidget {
  final String text;
  final Color? color;
  final Function onPressed;

  const MainButtonWidget({
    Key? key,
    required this.text,
    required this.onPressed,
    this.color = ColorManger.primaryColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onPressed();
      },
      child: Container(
        padding: const EdgeInsets.symmetric(
            vertical: defaultPadding, horizontal: defaultPadding * 2),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(defaultRadius),
        ),
        child: const Text(
          'EXPLORE NOW',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
