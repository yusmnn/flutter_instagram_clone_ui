import 'package:flutter/material.dart';

import '../../component/theme/color.dart';

class ProfileCount extends StatelessWidget {
  const ProfileCount({
    super.key,
    required this.count,
    required this.title,
  });

  final String count;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          count,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: cWhite,
          ),
        ),
        Text(
          title,
          style: const TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w400,
            color: cWhite,
          ),
        ),
      ],
    );
  }
}
