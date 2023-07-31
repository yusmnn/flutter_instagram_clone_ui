import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../component/button/text_button.dart';
import '../../../component/const/constant_text.dart';
import '../../../component/navigation/bottom_navbar.dart';
import '../../../component/theme/color.dart';
import '../../widget/grid_image.dart';
import '../../widget/profile_count.dart';
import '../../widget/story.dart';
import 'edit_profile_screen.dart';
// Import paket lainnya sesuai kebutuhan

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});
  static const String routeName = '/profile';

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: DefaultTabController(
          length: 2,
          child: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) {
              return [
                SliverAppBar(
                  automaticallyImplyLeading: false,
                  leading: const SizedBox(),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        'assets/icon/private.svg',
                        width: 9,
                        height: 16,
                      ),
                      const SizedBox(width: 6),
                      const Text(
                        'jacob_w',
                        style: TextStyle(fontSize: 16, color: cWhite),
                      ),
                    ],
                  ),
                  centerTitle: true,
                  actions: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.menu_rounded,
                        color: cWhite,
                      ),
                    ),
                  ],
                ),
                SliverToBoxAdapter(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              radius: 54,
                              backgroundImage: NetworkImage(
                                'https://picsum.photos/300/300?random',
                              ),
                            ),
                            ProfileCount(
                              count: '22',
                              title: 'Posts',
                            ),
                            ProfileCount(
                              count: '829',
                              title: 'Followers',
                            ),
                            ProfileCount(
                              count: '162',
                              title: 'Following',
                            ),
                          ],
                        ),
                      ),
                      const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Jacob West',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: cWhite,
                              ),
                            ),
                            Text(
                              'Digital goodies designer @pixsellz Everything is designed.',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: cWhite,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        child: Center(
                          child: ButtonText(
                            onPressed: () {
                              Navigator.pushNamed(
                                  context, EditProfileScreen.routeName);
                            },
                            text: 'Edit Profile',
                            color: cWhite,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 12),
                        child: SizedBox(
                          height: 100,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: urlImage.length,
                            itemBuilder: (context, index) {
                              return StoryWdiget(
                                name: 'highlight $index',
                                urlImage:
                                    'https://picsum.photos/300/300?random=${urlImage[index]}',
                              );
                            },
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      const TabBar(
                        labelColor: Colors.white,
                        unselectedLabelColor: Colors.grey,
                        indicatorColor: cBlack,
                        indicatorWeight: 12,
                        indicatorSize: TabBarIndicatorSize.tab,
                        indicator: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: cWhite,
                              width: 3,
                            ),
                          ),
                        ),
                        padding: EdgeInsets.zero,
                        tabs: [
                          Tab(
                            child: Icon(
                              Icons.grid_on,
                              size: 28,
                            ),
                          ),
                          Tab(
                            child: Icon(
                              Icons.person_pin_outlined,
                              size: 28,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ];
            },
            body: const Expanded(
              child: TabBarView(
                physics: BouncingScrollPhysics(),
                children: [
                  GridImage(),
                  GridImage(),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavBar(
        currentIndex: 4,
      ),
    );
  }
}
