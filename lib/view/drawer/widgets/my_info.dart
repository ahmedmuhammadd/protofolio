import 'package:flutter/material.dart';

import '../../../../shared/Colors/colors.dart';

class MyInfoWidget extends StatelessWidget {
  const MyInfoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: ColorManger.secondaryColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("assets/images/myImg.jpeg"),
            ),
            const SizedBox(height: 10),
            Text(
              'Ahmed Muhammad',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 3),
            Text(
              'Hey Iam Ahmed \n Flutter Developer',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    color: Colors.grey,
                    height: 1.2,
                    fontWeight: FontWeight.w200,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
