import 'package:flutter/material.dart';
import 'package:portfolio/shared/constant/const.dart';
import 'package:portfolio/view/drawer/widgets/courses_widget.dart';
import 'package:portfolio/view/drawer/widgets/graduation_widget.dart';
import 'package:portfolio/view/drawer/widgets/knowledge_widget.dart';
import 'package:portfolio/view/drawer/widgets/languages_list.dart';
import 'package:portfolio/view/drawer/widgets/my_info.dart';
import 'package:portfolio/view/drawer/widgets/residence_card_widget.dart';
import 'package:portfolio/view/drawer/widgets/skills_card.dart';
import 'widgets/contact_me.dart';

class SliderMenuWidget extends StatefulWidget {
  const SliderMenuWidget({Key? key}) : super(key: key);

  @override
  State<SliderMenuWidget> createState() => _SliderMenuWidgetState();
}

class _SliderMenuWidgetState extends State<SliderMenuWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Drawer(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              const MyInfoWidget(),
              Padding(
                padding: const EdgeInsets.all(defaultPadding),
                child: Column(
                  children: const [
                    ResidenceCardWidget(),
                    SkillsCardWidget(),
                    KnowledgeInfoWidget(),
                    LanguageListWidget(),
                    GraduationWidget(),
                    CoursesWidget(),
                    ContactMeWidget(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
