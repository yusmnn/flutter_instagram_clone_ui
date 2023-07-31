import 'package:flutter/material.dart';
import 'package:flutter_instagram_clone_ui/component/theme/color.dart';

import '../../../component/navigation/bottom_navbar.dart';
import '../../widget/list_notif.dart';

class LikesScreen extends StatefulWidget {
  const LikesScreen({super.key});
  static const String routeName = '/likes';

  @override
  State<LikesScreen> createState() => _LikesScreenState();
}

class _LikesScreenState extends State<LikesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: DefaultTabController(
          length: 2,
          child: Column(
            children: [
              Container(
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: cGrey, width: 0.3),
                  ),
                ),
                child: const TabBar(
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
                  tabs: [
                    SizedBox(
                      width: double.infinity,
                      child: Tab(
                        text: 'Following',
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: Tab(
                        text: 'You',
                      ),
                    ),
                  ],
                ),
              ),
              const Expanded(
                child: TabBarView(
                  children: [
                    Listnotif(),
                    Listnotif(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavBar(
        currentIndex: 3,
      ),
    );
  }
}
