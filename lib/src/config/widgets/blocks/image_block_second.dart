import 'package:flutter/material.dart';
import 'package:instagram/src/config/constants/app_colors.dart';

class ImageBlockSecond extends StatelessWidget {
  const ImageBlockSecond({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
        // height: 70,
        // width: 70,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: AppColors.storyColors2,
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
      ),
    );
  }
}
