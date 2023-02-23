import 'package:flutter/material.dart';
import 'package:portfolio/models/project/project_model.dart';
import 'package:portfolio/shared/constant/const.dart';
import 'package:portfolio/shared/widgets/details_widget.dart';
import 'package:portfolio/view/home/home_page.dart';
import 'package:portfolio/view/projects/widgets/app_bar_widget.dart';
import 'package:portfolio/view/projects/widgets/image_slider.dart';

class ProjectDetailsScreen extends StatelessWidget {
  static const id = 'ProjectDetailsScreen';

  const ProjectDetailsScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final projectModel =
        ModalRoute.of(context)!.settings.arguments as ProjectModel;
    return WillPopScope(
      onWillPop: () async {
        await Navigator.pushNamedAndRemoveUntil(
            context, MyHomePage.id, (route) => false);
        return true;
      },
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(defaultPadding),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomProjectAppBarWidget(
                    title: projectModel.title,
                  ),
                  MainDetailsWidget(
                    title: 'Description',
                    details: projectModel.description,
                  ),
                  // MainDetailsWidget(
                  //   title: 'Features',
                  //   details: projectModel
                  //       .description, ////to replace description by the features
                  // ),
                  MainDetailsWidget(
                    title: 'Technology',
                    details: projectModel.technology,
                  ),
                  MainDetailsWidget(
                    title: 'Team',
                    details: projectModel.groupList,
                  ),
                  if (projectModel.projectImages!.length > 1)
                    ImagesSliderWidget(projectModel: projectModel),
                  MainDetailsWidget(
                    isLink: true,
                    title: 'Source Code',
                    details: projectModel.sourceCode.isNotEmpty
                        ? projectModel.sourceCode
                        : 'No Source Code',
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
