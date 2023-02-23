import 'package:flutter/material.dart';

import '../../../shared/constant/const.dart';
import '../../../shared/widgets/title.dart';
import '../services/drawer_services.dart';

class KnowledgeInfoWidget extends StatelessWidget {
  const KnowledgeInfoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding * 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const MainTitleWidget(title: 'Knowledge'),
          const SizedBox(height: defaultPadding / 2),
          Column(children: DrawerServices.knowledgeInfoList),
        ],
      ),
    );
  }
}
