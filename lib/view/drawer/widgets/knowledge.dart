import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../shared/constant/const.dart';

class KnowledgeWidget extends StatelessWidget {
  final String title, icon;

  const KnowledgeWidget({Key? key, required this.title, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset('assets/icons/$icon.svg'),
        const SizedBox(width: defaultPadding / 3),
        Text(title),
      ],
    );
  }
}
