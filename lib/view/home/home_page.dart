import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:portfolio/shared/responsive_utls/responsive.dart';
import '../../shared/Colors/colors.dart';
import '../../shared/constant/const.dart';
import '../body/body_screen.dart';
import '../drawer/slider_menu.dart';

class MyHomePage extends StatefulWidget {
  static const id = 'MyHomePage';
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, //or set color with: Color(0xFF0000FF)
    ));
    return Scaffold(
      appBar: Responsive.isDesktop(context)
          ? null
          : AppBar(
              elevation: 0,
              backgroundColor: ColorManger.bgColor,
              leading: Builder(
                builder: (context) {
                  return IconButton(
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                    icon: const Icon(Icons.menu),
                  );
                },
              ),
            ),
      drawer: const SliderMenuWidget(),
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: maxWidth),
          child: Row(
            children: [
              if (Responsive.isDesktop(context))
                const Expanded(
                  flex: 2,
                  child: SliderMenuWidget(),
                ),
              const Expanded(
                flex: 7,
                child: BodyScreen(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
