import 'package:flutter/cupertino.dart';

import '../widgets/animated_circular_progress.dart';
import '../widgets/animated_linear_indicator.dart';
import '../widgets/knowledge.dart';
import '../widgets/row_info.dart';

class DrawerServices {
  static List<RowInfoWidget> rowInfoWidgetList = const [
    RowInfoWidget(title: 'Residence', data: 'Egypt'),
    RowInfoWidget(title: 'City', data: 'Cairo'),
    RowInfoWidget(title: 'Age', data: '22 '),
  ];
  static List<KnowledgeWidget> knowledgeInfoList = const [
    KnowledgeWidget(
      icon: 'check',
      title: 'python',
    ),
    KnowledgeWidget(
      icon: 'check',
      title: 'C#',
    ),
    KnowledgeWidget(
      icon: 'check',
      title: 'Php',
    ),
  ];
  static List<Widget> skillsList = const [
    AnimatedCircularProgressIndicator(
      percentage: .7,
      skillName: 'Flutter',
    ),
    AnimatedCircularProgressIndicator(
      percentage: .7,
      skillName: 'dart',
    ),
    AnimatedCircularProgressIndicator(
      percentage: .7,
      skillName: 'Firebase',
    ),
    AnimatedCircularProgressIndicator(
      percentage: .4,
      skillName: 'G Maps',
    ),
    AnimatedCircularProgressIndicator(
      percentage: .7,
      skillName: 'Api',
    ),
    AnimatedCircularProgressIndicator(
      percentage: .7,
      skillName: 'Http',
    ),
    AnimatedCircularProgressIndicator(
      percentage: .7,
      skillName: 'json',
    ),
    AnimatedCircularProgressIndicator(
      percentage: .7,
      skillName: 'Dio',
    ),
    AnimatedCircularProgressIndicator(
      percentage: .8,
      skillName: 'Shared Pref',
    ),
    AnimatedCircularProgressIndicator(
      percentage: .7,
      skillName: 'Provider',
    ),
    AnimatedCircularProgressIndicator(
      percentage: .6,
      skillName: 'Cubit',
    ),
    AnimatedCircularProgressIndicator(
      percentage: .4,
      skillName: 'GetX',
    ),
    AnimatedCircularProgressIndicator(
      percentage: .4,
      skillName: 'RiverPod',
    ),
    AnimatedCircularProgressIndicator(
      percentage: .5,
      skillName: 'SqLite',
    ),
    AnimatedCircularProgressIndicator(
      percentage: .6,
      skillName: 'Animation',
    ),
    AnimatedCircularProgressIndicator(
      percentage: .5,
      skillName: 'Responsive',
    ),
    AnimatedCircularProgressIndicator(
      percentage: .5,
      skillName: 'GitHub',
    ),
    AnimatedCircularProgressIndicator(
      percentage: .5,
      skillName: 'Clean Arch',
    ),
    AnimatedCircularProgressIndicator(
      percentage: .7,
      skillName: 'OOP',
    ),
  ];
  static List<Widget> languageInfoList = const [
    AnimatedLinearIndicator(
      percentage: 1,
      skillName: 'Arabic',
    ),
    AnimatedLinearIndicator(
      percentage: .6,
      skillName: 'English',
    ),
  ];
}
