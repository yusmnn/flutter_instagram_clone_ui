import 'package:flutter/material.dart';
import 'package:flutter_instagram_clone_ui/component/theme/color.dart';
import 'package:flutter_svg/svg.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';

import '../../../component/const/constant_text.dart';
import '../../../component/navigation/bottom_navbar.dart';
import 'package:flutter_instagram_clone_ui/component/field/text_box.dart';

import '../../widget/categories_search.dart';
import '../home/home_screen.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});
  static const String routeName = '/search';

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController searchController = TextEditingController();

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: TextBox(
          textEditingController: searchController,
          hintText: 'Search',
          autoFocus: false,
          prefixIcon: const Icon(
            Icons.search,
            color: Color.fromARGB(134, 214, 213, 213),
            size: 24,
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: SvgPicture.asset(
                'assets/icon/igtv.svg',
                height: 24,
                width: 24,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
              child: SizedBox(
                height: 56,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  itemBuilder: (context, index) => SizedBox(
                    height: 32,
                    child: CategoriesWdiget(
                      categories: categories[index],
                    ),
                  ),
                ),
              ),
            ),
            StaggeredGridView.countBuilder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 3,
              mainAxisSpacing: 1,
              crossAxisSpacing: 1,
              itemCount: urlImageSearch.length,
              itemBuilder: (BuildContext context, int index) => Container(
                color: cGrey,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, HomeScreen.routeName);
                  },
                  child: Image.network(
                    'https://picsum.photos/300/300?random=${urlImageSearch[index]}',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              staggeredTileBuilder: (int index) => StaggeredTile.count(
                index % 8 == 0 ? 2 : 1,
                index % 8 == 0 ? 2 : 1,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavBar(
        currentIndex: 1,
      ),
    );
  }
}
