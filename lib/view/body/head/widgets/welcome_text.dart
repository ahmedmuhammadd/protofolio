import 'package:flutter/material.dart';
import 'package:portfolio/shared/responsive_utls/responsive.dart';
import '../../../../shared/constant/const.dart';
import '../../../../shared/widgets/animated_text.dart';
import '../../../../shared/widgets/button_widget.dart';

import 'flutter_text_widget.dart';

class WelcomeTextWidget extends StatelessWidget {
  const WelcomeTextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Align(
      alignment: AlignmentDirectional.centerStart,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: defaultPadding * 2,
          horizontal: defaultPadding * 2,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(bottom: defaultPadding),
                child: AnimatedTextWidget(
                  repeatForever: false,
                  totalRepeatCount: 1,
                  text1: 'Discover My Amazing \nArt Space!',
                  style: Responsive.isDesktop(context)
                      ? Theme.of(context).textTheme.displaySmall!.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          )
                      : Theme.of(context).textTheme.headlineSmall!.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: defaultPadding),
              child: Row(
                children: [
                  if (!Responsive.isMobileLarge(context))
                    const FlutterTextWidget(),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: defaultPadding / 5),
                    child: DefaultTextStyle(
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .copyWith(color: Colors.white),
                      child: AnimatedTextWidget(
                        repeatForever: true,
                        text1: 'Welcome To My PortFolio',
                        text2: width > 1321
                            ? 'I build Responsive \nweb and mobile apps'
                            : '',
                        text3: 'I build Apps With da',
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(color: Colors.white),
                      ),
                    ),
                  ),
                  if (!Responsive.isMobileLarge(context))
                    const FlutterTextWidget(),
                ],
              ),
            ),
            if (!Responsive.isMobileLarge(context))
              MainButtonWidget(text: 'EXPLORE NOW', onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
