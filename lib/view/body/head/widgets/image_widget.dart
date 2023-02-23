import 'package:flutter/material.dart';

import '../../../../shared/constant/const.dart';
import '../../../../shared/widgets/blur_image.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(defaultRadius),
        image: const DecorationImage(
            image: ExactAssetImage('assets/images/bg.jpeg'), fit: BoxFit.cover),
      ),
      child: const BlurImageWidget(),
    );
  }
}
