import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/src/config/constants/app_colors.dart';
import 'package:instagram/src/config/constants/app_images.dart';
import 'package:instagram/src/config/text/paragraph.dart';

class UserPosted extends StatefulWidget {
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
  State<UserPosted> createState() => _UserPostedState();
}

class _UserPostedState extends State<UserPosted> {
  bool isFavorite = false;

  void toggleFavorite() {
    setState(() {
      isFavorite = !isFavorite;
    });
  }

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
                        image: AssetImage(
                            widget.userImage ?? AppImage.imageNotFound),
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
                      content: widget.userName ?? '?',
                      fontWeight: FontWeight.bold,
                    ),
                    Paragraph(
                      content: widget.userNickName ?? '?',
                      fontSize: 12,
                    ),
                  ],
                ),
                const Spacer(),
                const Icon(Icons.more_vert)
              ],
            ),
          ),
          GestureDetector(
            onDoubleTap: toggleFavorite,
            child: Container(
              height: 400,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      widget.postedImage ?? AppImage.imageNotFound),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          // const SizedBox(height: 7),
          Column(
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: toggleFavorite,
                    icon: isFavorite
                        ? Icon(
                            Icons.favorite_rounded,
                            size: 27,
                            color: AppColors.pink,
                          )
                        : const Icon(
                            Icons.favorite_border_rounded,
                            size: 27,
                          ),
                  ),
                  const SizedBox(width: 5),
                  const Icon(Icons.messenger_outline_rounded, size: 27),
                  const SizedBox(width: 15),
                  const Icon(Icons.send_outlined, size: 27),
                  const Spacer(),
                  const Icon(Icons.bookmark_border_rounded, size: 30)
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(left: 13.0),
                child: Row(
                  children: [Paragraph(content: '999.999.999 likes')],
                ),
              ),
              const SizedBox(height: 5),
              const Padding(
                padding: EdgeInsets.only(left: 9.0),
                child: Row(
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
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
