import 'package:flutter/material.dart';
import 'package:flutter_instagram_clone_ui/component/theme/color.dart';
import 'package:flutter_instagram_clone_ui/view/widget/story.dart';
import 'package:flutter_instagram_clone_ui/view/widget/user_post.dart';
import 'package:flutter_svg/svg.dart';

import '../../../component/const/constant_text.dart';
import '../../../component/navigation/bottom_navbar.dart';
import '../login/login_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static const String routeName = '/home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 12),
          child: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, LoginScreen.routeName);
            },
            child: SvgPicture.asset(
              'assets/icon/camera.svg',
            ),
          ),
        ),
        leadingWidth: 34,
        title: SvgPicture.asset(
          'assets/icon/logo.svg',
          width: 105,
          height: 28,
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 18),
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, LoginScreen.routeName);
              },
              child: SvgPicture.asset(
                'assets/icon/igtv.svg',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, LoginScreen.routeName);
              },
              child: SvgPicture.asset(
                'assets/icon/messanger.svg',
              ),
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            child: SizedBox(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: users.length,
                itemBuilder: (context, index) {
                  return StoryWdiget(
                    name: users[index],
                    urlImage:
                        'https://picsum.photos/300/300?random=${urlImage[index]}',
                  );
                },
              ),
            ),
          ),
          const Divider(
            color: cGrey,
            thickness: 0.2,
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: users.length,
            itemBuilder: (context, index) {
              return UserPostWidget(
                name: users[index],
                urlprofile:
                    'https://picsum.photos/300/300?random=${users[index]}',
                location: 'Tokyo, Japan',
                urlPostImage: [
                  'https://picsum.photos/300/300?random=${urlImage[index]}',
                  'https://picsum.photos/300/300?random=${users[index]}',
                  'https://picsum.photos/300/300?random=city}',
                ],
                like: '44,689',
                caption:
                    'The game in Japan was amazing and I want to share some photos',
                comment: '235',
                times: '10 haours ago',
              );
            },
          ),
        ],
      ),
      bottomNavigationBar: const BottomNavBar(
        currentIndex: 0,
      ),
    );
  }
}
