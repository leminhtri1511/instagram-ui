import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram/src/config/constants/app_images.dart';
import 'package:instagram/src/presentation/nav_bar/home/components/user_story.dart';

import 'components/user_posted.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Column(
        children: [
          buildUserStory(),
          buildUserPosted(),
        ],
      ),
    );
  }

  PreferredSizeWidget buildAppBar() => AppBar(
        surfaceTintColor: Colors.transparent,
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
      );

  Widget buildUserStory() => Padding(
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
      );

  Widget buildUserPosted() => Expanded(
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
            const UserPosted(),
          ],
        ),
      );
}
