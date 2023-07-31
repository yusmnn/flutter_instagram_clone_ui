import 'package:flutter/material.dart';

import '../../component/const/constant_text.dart';
import '../../component/theme/color.dart';

class Listnotif extends StatelessWidget {
  const Listnotif({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: users.length,
      itemBuilder: (context, index) {
        return SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: cGrey,
                  backgroundImage: NetworkImage(
                    'https://picsum.photos/300/300?random=${urlImage[index]}',
                  ),
                  radius: 30,
                ),
                const SizedBox(width: 12),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.60,
                  child: const Text(
                    'maxjacobson and craig_love liked martini_rond\'s post',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: cTypo,
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      letterSpacing: -0.1,
                    ),
                  ),
                ),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                      image: NetworkImage(
                        'https://picsum.photos/300/300?random=${urlImage[index]}',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
