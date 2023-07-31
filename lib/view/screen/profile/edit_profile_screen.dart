import 'package:flutter/material.dart';
import 'package:flutter_instagram_clone_ui/component/theme/color.dart';

import '../../widget/info_profile.dart';
import 'profile_screen.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});
  static const String routeName = '/editProfile';

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 110,
        leading: TextButton(
          onPressed: () {
            Navigator.pushNamed(context, ProfileScreen.routeName);
          },
          child: const Text(
            'Cancel',
            style: TextStyle(
              color: cTypo,
              fontSize: 12,
              fontWeight: FontWeight.w400,
              letterSpacing: -0.33,
            ),
          ),
        ),
        title: const Text(
          'Edit Profile',
          style: TextStyle(
            color: cWhite,
            fontSize: 16,
            fontWeight: FontWeight.w700,
            letterSpacing: -0.05,
          ),
        ),
        centerTitle: true,
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text(
              'Done',
              style: TextStyle(
                color: cBlue,
                fontSize: 12,
                fontWeight: FontWeight.w600,
                letterSpacing: -0.33,
              ),
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          const SizedBox(height: 30),
          const CircleAvatar(
            radius: 54,
            backgroundImage: NetworkImage(
              'https://picsum.photos/300/300?random',
            ),
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              'Change Profile Photo',
              style: TextStyle(
                color: cBlue,
                fontSize: 13,
                fontWeight: FontWeight.w600,
                letterSpacing: -0.05,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: InfoProfile(
              profileData: [
                {'title': 'Name', 'value': 'Jacob West'},
                {'title': 'Username', 'value': 'jacob_w'},
                {'title': 'Website', 'value': 'Website'},
                {
                  'title': 'Bio',
                  'value':
                      'Digital goodies designer @pixsellz Everything is designed.',
                },
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Container(
              width: double.infinity,
              alignment: Alignment.topLeft,
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  'Switch to Professional Account',
                  style: TextStyle(
                    color: cBlue,
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    letterSpacing: -0.05,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Container(
              width: double.infinity,
              alignment: Alignment.topLeft,
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  'Private Information',
                  style: TextStyle(
                    color: cWhite,
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    letterSpacing: -0.05,
                  ),
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: InfoProfile(
              profileData: [
                {
                  'title': 'Email',
                  'value': 'jacob.west@gmail.com',
                },
                {
                  'title': 'Phone',
                  'value': '+1 202 555 0147',
                },
                {
                  'title': 'Gender',
                  'value': 'Male',
                },
              ],
            ),
          ),
        ],
      ),
    );
  }
}
