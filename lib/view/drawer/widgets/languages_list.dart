import 'package:flutter/material.dart';

import '../../../shared/constant/const.dart';
import '../../../shared/widgets/title.dart';
import '../services/drawer_services.dart';

class LanguageListWidget extends StatelessWidget {
  const LanguageListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const MainTitleWidget(title: 'Language'),
          const SizedBox(height: defaultPadding / 2),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: DrawerServices.languageInfoList,
          ),
        ],
      ),
    );
  }
}
