import 'package:flutter/material.dart';
import '../../../shared/constant/const.dart';
import '../../../shared/widgets/title.dart';
import '../services/drawer_services.dart';

class SkillsCardWidget extends StatelessWidget {
  const SkillsCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const MainTitleWidget(title: 'Skills'),
          const SizedBox(height: defaultPadding / 2),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: DrawerServices.skillsList.sublist(0, 4),
          ),
          const SizedBox(height: defaultPadding / 2),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: DrawerServices.skillsList.sublist(5, 9),
          ),
          const SizedBox(height: defaultPadding / 2),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: DrawerServices.skillsList.sublist(10, 14),
          ),
          const SizedBox(height: defaultPadding / 2),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: DrawerServices.skillsList.sublist(15, 19),
          ),
          const SizedBox(height: defaultPadding / 2),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   crossAxisAlignment: CrossAxisAlignment.center,
          //   children: DrawerServices.skillsList.sublist(19, 20),
          // ),
        ],
      ),
    );
  }
}
