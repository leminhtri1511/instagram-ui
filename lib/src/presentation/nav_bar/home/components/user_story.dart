import 'package:flutter/material.dart';
import 'package:instagram/src/config/constants/app_colors.dart';

import 'package:instagram/src/config/widgets/text/paragraph.dart';

class UserStory extends StatelessWidget {
  const UserStory({
    super.key,
    this.userImage,
    this.userName,
  });

  final String? userImage;
  final String? userName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 13.0),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: AppColors.storyColors,
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
              ),
              borderRadius: BorderRadius.circular(99),
            ),
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(99)),
                child: CircleAvatar(
                  backgroundColor: AppColors.white,
                  radius: 37,
                  child: userImage == null
                      ? const CircularProgressIndicator()
                      : Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(userImage!),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                ),
              ),
            ),
          ),
          Paragraph(content: userName ?? '(user name)'),
        ],
      ),
    );
  }
}
