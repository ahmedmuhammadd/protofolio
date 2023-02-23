import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../shared/Colors/colors.dart';
import '../../../../shared/constant/const.dart';
import '../../../shared/widgets/title.dart';

class ContactMeWidget extends StatelessWidget {
  const ContactMeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const MainTitleWidget(title: 'DOWNLOAD CV'),
              const SizedBox(width: defaultPadding * 2),
              Container(
                  padding: const EdgeInsets.all(defaultPadding / 4),
                  color: ColorManger.secondaryColor,
                  child: SvgPicture.asset('assets/icons/download.svg')),
            ],
          ),
          const SizedBox(height: defaultPadding),
          const MainTitleWidget(title: 'Contact Me'),
          // const SizedBox(height: defaultPadding / 2),
          Row(
            children: const [
              Text('Number: '),
              Text('+201143050190'),
            ],
          ),
          const SizedBox(height: defaultPadding / 2),
          Container(
            color: ColorManger.secondaryColor,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding:
                      const EdgeInsetsDirectional.only(end: defaultPadding / 2),
                  child: SvgPicture.asset('assets/icons/github.svg'),
                ),
                Padding(
                  padding:
                      const EdgeInsetsDirectional.only(end: defaultPadding / 2),
                  child: SvgPicture.asset('assets/icons/linkedin.svg'),
                ),
                Padding(
                  padding:
                      const EdgeInsetsDirectional.only(end: defaultPadding / 2),
                  child: SvgPicture.asset('assets/icons/dribble.svg'),
                ),
                Padding(
                  padding:
                      const EdgeInsetsDirectional.only(end: defaultPadding / 2),
                  child: SvgPicture.asset('assets/icons/twitter.svg'),
                ),
                Padding(
                  padding:
                      const EdgeInsetsDirectional.only(end: defaultPadding / 2),
                  child: SvgPicture.asset('assets/icons/behance.svg'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
