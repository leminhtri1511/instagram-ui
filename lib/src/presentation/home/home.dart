import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram/src/config/constants/app_images.dart';
import 'package:instagram/src/config/text/paragraph.dart';
import 'package:instagram/src/presentation/home/components/user_story.dart';

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
          SizedBox(
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                
                UserStory(),
                UserStory(),
                UserStory(),
                UserStory(),
                UserStory(),
                
              ],
            ),
          ),
          const Divider()
          // const Paragraph(
          //   content: 'HOME',
          //   fontSize: 70,
          // ),
        ],
      ),
    );
  }
}
