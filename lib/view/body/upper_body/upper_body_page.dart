import 'package:flutter/material.dart';

import 'package:portfolio/shared/responsive_utls/responsive.dart';
import 'package:portfolio/shared/widgets/title.dart';
import 'package:portfolio/view/body/upper_body/widgets/project_grid_widgets.dart';

import '../../../shared/constant/const.dart';

class UpperBodyPage extends StatelessWidget {
  const UpperBodyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Padding(
          padding: EdgeInsets.only(bottom: defaultPadding / 2),
          child: MainTitleWidget(title: 'My Projects'),
        ),
        Responsive(
          mobile: ProjectsGridListWidgets(
            crossAxisCount: 2,
            childAspectRatio: 0.9,
          ),
          mobileLarge: ProjectsGridListWidgets(
            crossAxisCount: 2,
          ),
          tablet: ProjectsGridListWidgets(
            childAspectRatio: 1.1,
          ),
          desktop: ProjectsGridListWidgets(),
        ),
        // ProjectsGridListWidgets(),
      ],
    );
  }
}
