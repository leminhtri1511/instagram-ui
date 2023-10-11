import 'package:flutter/material.dart';
import 'package:instagram/src/config/constants/app_images.dart';
import 'package:instagram/src/config/text/paragraph.dart';

class AddStory extends StatelessWidget {
  const AddStory({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(left: 13.0),
      child: Column(
        children: [
          Stack(
            children: [
              CircleAvatar(
                radius: 40,
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(AppImage.user0),fit: BoxFit.cover),
                  ),
                ),
              ),
            ],
          ),
          const Paragraph(content: 'Your story')
        ],
      ),
    );
  }
}
