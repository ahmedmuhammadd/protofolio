import 'package:flutter/material.dart';
import 'package:portfolio/shared/constant/const.dart';
import 'package:portfolio/view/body/head/widgets/head_body.dart';
import 'package:portfolio/view/body/upper_body/upper_body_page.dart';

import 'middle_body/middle_page.dart';

class BodyScreen extends StatelessWidget {
  const BodyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(defaultPadding),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: const [
            HeadBodyWidget(),
            MiddlePageScreen(),
            UpperBodyPage(),
          ],
        ),
      ),
    );
  }
}
