import 'package:flutter/material.dart';
import '../../../../shared/Colors/colors.dart';

class FlutterTextWidget extends StatelessWidget {
  const FlutterTextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      '<flutter>',
      style: Theme.of(context).textTheme.titleMedium!.copyWith(
            color: ColorManger.primaryColor,
          ),
    );
  }
}
