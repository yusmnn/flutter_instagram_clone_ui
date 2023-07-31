import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:flutter_svg/svg.dart';

import '../../component/theme/color.dart';
import '../screen/login/login_screen.dart';

class UserPostWidget extends StatelessWidget {
  const UserPostWidget(
      {super.key,
      required this.name,
      required this.location,
      required this.urlprofile,
      required this.urlPostImage,
      required this.like,
      required this.caption,
      required this.times,
      required this.comment});

  final String caption;
  final String like;
  final String location;
  final String name;
  final List<String> urlPostImage;
  final String urlprofile;
  final String comment;
  final String times;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          dense: true,
          contentPadding: EdgeInsets.zero,
          leading: CircleAvatar(
            backgroundColor: cGrey,
            backgroundImage: NetworkImage(
              urlprofile,
            ),
            radius: 34,
          ),
          title: Text(
            name,
            style: const TextStyle(
              color: cTypo,
              fontSize: 13,
              fontWeight: FontWeight.w600,
              letterSpacing: -0.1,
            ),
          ),
          subtitle: Text(
            location,
            style: const TextStyle(
              color: cTypo,
              fontSize: 11,
              fontWeight: FontWeight.w400,
              letterSpacing: 0.07,
            ),
          ),
          trailing: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, LoginScreen.routeName);
            },
            icon: const Icon(
              Icons.more_horiz_rounded,
              color: cTypo,
              weight: 14,
            ),
          ),
        ),
        const SizedBox(height: 11),
        ImageSlideshow(
          width: double.infinity,
          height: 375,
          initialPage: 0,
          indicatorColor: Colors.blue,
          indicatorBackgroundColor: Colors.grey,
          children: urlPostImage
              .map((url) => Image.network(
                    url,
                    fit: BoxFit.cover,
                  ))
              .toList(),
        ),
        const SizedBox(height: 11),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, LoginScreen.routeName);
                      },
                      child: SvgPicture.asset(
                        'assets/icon/like.svg',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, LoginScreen.routeName);
                      },
                      child: SvgPicture.asset(
                        'assets/icon/comment.svg',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
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
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, LoginScreen.routeName);
                },
                child: SvgPicture.asset(
                  'assets/icon/save.svg',
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 12),
          child: Text(
            'Liked by craig_love and $like others',
            style: const TextStyle(
              color: cTypo,
              fontSize: 13,
              fontWeight: FontWeight.w400,
              letterSpacing: -0.7,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 12),
          child: Text(
            '$name $caption',
            maxLines: 5,
            style: const TextStyle(
              color: cTypo,
              fontSize: 13,
              fontWeight: FontWeight.w400,
              letterSpacing: -0.7,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 12),
          child: Text(
            'View all $comment Comments',
            maxLines: 5,
            style: const TextStyle(
              color: Colors.white54,
              fontSize: 13,
              fontWeight: FontWeight.w400,
              letterSpacing: -0.7,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 12),
          child: Text(
            times,
            maxLines: 5,
            style: const TextStyle(
              color: Colors.white54,
              fontSize: 12,
              fontWeight: FontWeight.w400,
              letterSpacing: -0.7,
            ),
          ),
        ),
      ],
    );
  }
}
