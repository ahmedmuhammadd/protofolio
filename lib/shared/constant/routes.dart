import '../../view/home/home_page.dart';
import 'package:flutter/material.dart';
import '../../view/projects/project_details_page.dart';

Map<String, Widget Function(BuildContext)> generalRoutes() => {
      MyHomePage.id: (context) => const MyHomePage(),
      ProjectDetailsScreen.id: (context) => const ProjectDetailsScreen(),
    };
