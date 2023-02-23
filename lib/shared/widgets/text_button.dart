import 'package:flutter/material.dart';

import '../Colors/colors.dart';

class MainTextButtonWidget extends StatelessWidget {
  final String text;
  final Function onPressed;
  final Color? textColor;

  const MainTextButtonWidget({
    Key? key,
    required this.text,
    this.textColor = ColorManger.primaryColor,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          onPressed();
        },
        child: Text(
          text,
          style: TextStyle(color: textColor),
        ));
  }
}
