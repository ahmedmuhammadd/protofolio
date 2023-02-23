import 'package:flutter/material.dart';

import '../services/drawer_services.dart';

class ResidenceCardWidget extends StatelessWidget {
  const ResidenceCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: DrawerServices.rowInfoWidgetList,
    );
  }
}
