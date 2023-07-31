import 'package:flutter/material.dart';
import 'package:flutter_instagram_clone_ui/component/theme/color.dart';

class CategoriesWdiget extends StatelessWidget {
  const CategoriesWdiget({
    super.key,
    required this.categories,
  });

  final String categories;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 8),
      child: Container(
        // height: 20,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: const Color(0xff000000),
          border: Border.all(
            color: const Color.fromARGB(134, 214, 213, 213),
            width: 1.0,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 2),
            child: Text(
              categories,
              style: const TextStyle(
                color: cWhite,
                fontSize: 14,
                fontWeight: FontWeight.w600,
                letterSpacing: -0.02,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
