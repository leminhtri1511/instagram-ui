import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram/src/config/constants/app_images.dart';
import 'package:instagram/src/config/text/paragraph.dart';
import 'package:instagram/src/presentation/home/components/add_story.dart';
import 'package:instagram/src/presentation/home/components/user_story.dart';

import 'components/user_posted.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          AppImage.instagramText,
          width: 120,
        ),
        actions: [
          const Icon(
            Icons.favorite_border,
            size: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: SvgPicture.asset(
              AppImage.messengerIcon,
              width: 25,
              height: 25,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.0),
            child: SizedBox(
              height: 110,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  UserStory(
                    userImage: AppImage.user1,
                    userName: 'user 1',
                  ),
                  UserStory(
                    userImage: AppImage.user2,
                    userName: 'user 2',
                  ),
                  UserStory(
                    userImage: AppImage.user3,
                    userName: 'user 3',
                  ),
                  const UserStory(),
                  const UserStory(),
                ],
              ),
            ),
          ),
          // const Divider(),
          Expanded(
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                UserPosted(
                  postedImage: AppImage.networkImage1,
                  userImage: AppImage.user1,
                  userName: 'user 1',
                  userNickName: 't thong',
                ),
                UserPosted(
                  postedImage: AppImage.networkImage2,
                  userImage: AppImage.user2,
                  userName: 'user 2',
                  userNickName: 't thong',
                ),
                UserPosted(
                  postedImage: AppImage.networkImage3,
                  userImage: AppImage.user3,
                  userName: 'user 3',
                  userNickName: 't thong',
                ),
                UserPosted(
                  postedImage: AppImage.networkImage4,
                  userImage: AppImage.user4,
                  userName: 'user 4',
                  userNickName: 't thong',
                ),
              ],
            ),
          ),
          // const Paragraph(
          //   content: 'HOME',
          //   fontSize: 70,
          // ),
        ],
      ),
    );
  }
}
