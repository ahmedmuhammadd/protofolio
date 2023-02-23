import 'package:flutter/material.dart';
import '../../../../shared/constant/const.dart';

class RowInfoWidget extends StatelessWidget {
  final String title, data;

  const RowInfoWidget({Key? key, required this.title, required this.data})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(
        children: [
          Text(
            title,
          ),
          const Spacer(),
          Text(
            data,
            style: const TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
