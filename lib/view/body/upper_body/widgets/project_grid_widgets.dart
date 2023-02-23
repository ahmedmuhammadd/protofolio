import 'package:flutter/material.dart';
import 'package:portfolio/view/body/upper_body/widgets/progect_card.dart';

import '../../../../shared/constant/const.dart';
import '../services/upper_body_services.dart';

class ProjectsGridListWidgets extends StatelessWidget {
  final int? crossAxisCount;
  final double? childAspectRatio;

  const ProjectsGridListWidgets({
    Key? key,
    this.crossAxisCount = 3,
    this.childAspectRatio = 1.3,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: UpperBodyServices.demoProjects.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount!,
        childAspectRatio: childAspectRatio!,
        crossAxisSpacing: defaultPadding,
        mainAxisSpacing: defaultPadding,
      ),
      itemBuilder: (context, index) {
        return ProjectCardWidget(
            projectModel: UpperBodyServices.demoProjects[index]);
      },
    );
  }
}
