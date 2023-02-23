import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:portfolio/shared/widgets/dark_theme.dart';
import 'package:portfolio/view/projects/project_details_page.dart';
import 'package:window_size/window_size.dart';
import 'view/home/home_page.dart';

void main() {
  if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
    setWindowTitle('Portfolio');
    setWindowMinSize(const Size(432, 484));
  }
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
    return MaterialApp(
      title: 'protoFolio',
      debugShowCheckedModeBanner: false,
      routes: {
        MyHomePage.id: (context) => const MyHomePage(),
        ProjectDetailsScreen.id: (context) => const ProjectDetailsScreen(),
      },
      themeMode: ThemeMode.dark,
      darkTheme: lightTheme(context),
      home: const MyHomePage(),
    );
  }
}
