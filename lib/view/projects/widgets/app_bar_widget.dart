import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../../shared/Colors/colors.dart';
import '../../../shared/constant/const.dart';
import '../../../shared/widgets/title.dart';
import '../../home/home_page.dart';

class CustomProjectAppBarWidget extends StatelessWidget {
  final String title;
  const CustomProjectAppBarWidget({Key? key, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(bottom: defaultPadding),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MainTitleWidget(
                title: title,
                largeTitle: true,
              ),
              if (!kIsWeb)
                GestureDetector(
                    onTap: () {
                      Navigator.pushNamedAndRemoveUntil(
                        context,
                        MyHomePage.id,
                        (route) => false,
                      );
                    },
                    child: const Padding(
                      padding: EdgeInsets.only(right: defaultPadding),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: ColorManger.primaryColor,
                      ),
                    )),
            ],
          ),
        ),
      ),
    );
  }
}
