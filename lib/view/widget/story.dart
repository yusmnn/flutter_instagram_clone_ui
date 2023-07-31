import 'package:flutter/material.dart';
import 'package:flutter_instagram_clone_ui/component/theme/color.dart';

import '../screen/profile/edit_profile_screen.dart';

class StoryWdiget extends StatelessWidget {
  const StoryWdiget({super.key, required this.name, required this.urlImage});

  final String name;
  final String urlImage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 4, right: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          DecoratedBox(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              gradient: RadialGradient(
                colors: [
                  Colors.orange,
                  Colors.pink,
                  Colors.red,
                  Colors.deepPurple,
                ],
                center: Alignment.center,
                radius: 3.0,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(3.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, EditProfileScreen.routeName);
                },
                child: CircleAvatar(
                  backgroundColor: cGrey,
                  backgroundImage: NetworkImage(
                    urlImage,
                  ),
                  radius: 34,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Text(
              name,
              style: const TextStyle(
                color: cWhite,
                fontSize: 12,
                fontWeight: FontWeight.w400,
                letterSpacing: -0.01,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
