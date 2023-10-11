import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/src/config/constants/app_colors.dart';
import 'package:instagram/src/config/constants/app_images.dart';
import 'package:instagram/src/config/text/paragraph.dart';

class UserPosted extends StatelessWidget {
  const UserPosted({
    super.key,
    this.postedImage,
    this.userImage,
    this.userName,
    this.userNickName,
  });

  final String? postedImage;
  final String? userImage;
  final String? userName;
  final String? userNickName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 3),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 25,
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(userImage ?? AppImage.imageNotFound),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Paragraph(
                      content: userName ?? '?',
                      fontWeight: FontWeight.bold,
                    ),
                    Paragraph(
                      content: userNickName ?? '?',
                      fontSize: 12,
                    ),
                  ],
                ),
                const Spacer(),
                const Icon(Icons.more_vert)
              ],
            ),
          ),
          Container(
            height: 400,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(postedImage ?? AppImage.imageNotFound),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 7),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(Icons.favorite_border_rounded, size: 27),
                    SizedBox(width: 15),
                    Icon(Icons.messenger_outline_rounded, size: 27),
                    SizedBox(width: 15),
                    Icon(Icons.send_outlined, size: 27),
                    Spacer(),
                    Icon(Icons.bookmark_border_rounded, size: 30)
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  child: Row(
                    children: [Paragraph(content: '999.999.999 likes')],
                  ),
                ),
                Row(
                  children: [
                    Icon(CupertinoIcons.person_crop_circle, size: 30),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Paragraph(
                          content: 'Add comment...',
                          fontWeight: FontWeight.bold,
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
