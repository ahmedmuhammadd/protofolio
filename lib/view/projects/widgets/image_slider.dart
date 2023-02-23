import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/models/project/project_model.dart';

import '../../../shared/constant/const.dart';
import '../../../shared/widgets/title.dart';

class ImagesSliderWidget extends StatelessWidget {
  final ProjectModel projectModel;

  const ImagesSliderWidget({Key? key, required this.projectModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Column(
        children: [
          const Align(
            alignment: Alignment.centerLeft,
            child: MainTitleWidget(title: 'Project Pictures'),
          ),
          CarouselSlider(
            options: CarouselOptions(
                autoPlayAnimationDuration: defaultDuration,
                autoPlay: true,
                height: MediaQuery.of(context).size.height - 100),
            items: projectModel.projectImages!.map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        image: DecorationImage(image: AssetImage(i))),
                  );
                },
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
