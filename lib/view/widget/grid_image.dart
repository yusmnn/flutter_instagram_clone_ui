import 'package:flutter/material.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';

import '../../component/const/constant_text.dart';
import '../../component/theme/color.dart';
import '../screen/home/home_screen.dart';

class GridImage extends StatelessWidget {
  const GridImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return StaggeredGridView.countBuilder(
      shrinkWrap: true,
      crossAxisCount: 3,
      mainAxisSpacing: 1,
      crossAxisSpacing: 1,
      itemCount: urlImage.length,
      itemBuilder: (BuildContext context, int index) => Container(
        color: cGrey,
        child: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, HomeScreen.routeName);
          },
          child: Image.network(
            'https://picsum.photos/300/300?random=${urlImage[index]}',
            fit: BoxFit.cover,
          ),
        ),
      ),
      staggeredTileBuilder: (int index) => const StaggeredTile.count(
        1,
        1,
      ),
    );
  }
}
