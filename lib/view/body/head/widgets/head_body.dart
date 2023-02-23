import 'package:flutter/material.dart';
import 'package:portfolio/shared/responsive_utls/responsive.dart';
import 'package:portfolio/view/body/head/widgets/welcome_text.dart';

import 'image_widget.dart';

class HeadBodyWidget extends StatelessWidget {
  const HeadBodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: Responsive.isMobile(context) ? 1.5 : 3,
      child: Stack(
        children: const [
          ImageWidget(),
          WelcomeTextWidget(),
        ],
      ),
    );
  }
}
