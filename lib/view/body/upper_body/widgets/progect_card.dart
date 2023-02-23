import 'package:flutter/material.dart';
import 'package:portfolio/shared/responsive_utls/responsive.dart';

import '../../../../models/project/project_model.dart';
import '../../../../shared/Colors/colors.dart';
import '../../../../shared/constant/const.dart';
import '../../../../shared/widgets/text_button.dart';
import '../../../projects/project_details_page.dart';

class ProjectCardWidget extends StatelessWidget {
  final ProjectModel projectModel;

  const ProjectCardWidget({Key? key, required this.projectModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorManger.secondaryColor,
        borderRadius: BorderRadius.circular(defaultRadius),
      ),
      padding: const EdgeInsets.all(defaultPadding),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          projectModel.title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: Responsive.isMobile(context)
              ? Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 12)
              : Theme.of(context).textTheme.titleSmall,
        ),
        Expanded(
          flex: 8,
          child: Center(
            child: Text(projectModel.description,
                maxLines: !Responsive.isDesktop(context) ? 2 : 5,
                overflow: TextOverflow.ellipsis),
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: MainTextButtonWidget(
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(
                context,
                ProjectDetailsScreen.id,
                (route) => false,
                arguments: ProjectModel(
                  projectImages: projectModel.projectImages ?? [''],
                  technology: projectModel.technology,
                  groupList: projectModel.groupList,
                  title: projectModel.title,
                  sourceCode: projectModel.sourceCode,
                  description: projectModel.description,
                ),
              );
            },
            text: 'Read More>>',
          ),
        ),
      ]),
    );
  }
}
