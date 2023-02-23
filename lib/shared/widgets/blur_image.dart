import 'dart:ui';
import 'package:flutter/material.dart';

class BlurImageWidget extends StatelessWidget {
  const BlurImageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 1, sigmaY: 1),
        child: Container(
          alignment: Alignment.center,
          color: Colors.transparent,
        ),
      ),
    );
  }
}
