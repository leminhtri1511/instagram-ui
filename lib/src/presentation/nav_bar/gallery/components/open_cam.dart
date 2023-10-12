import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:instagram/src/config/constants/app_colors.dart';

import '../../../../config/widgets/text/paragraph.dart';

class OpenCamera extends StatefulWidget {
  const OpenCamera({
    super.key,
    this.onPickImage,
  });

  final void Function(File pickedImage)? onPickImage;

  @override
  State<OpenCamera> createState() => _OpenCameraState();
}

class _OpenCameraState extends State<OpenCamera> {
  File? pickedImageFile;

  void pickImage() async {
    final pickedImage = await ImagePicker().pickImage(
      source: ImageSource.camera,
      imageQuality: 100,
      maxWidth: 150,
    );
    
    if (pickedImage == null) {
      return;
    }

    setState(() {
      pickedImageFile = File(pickedImage.path);
    });

    widget.onPickImage!(pickedImageFile!);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 50,
          backgroundColor: AppColors.white,
          foregroundImage:
              pickedImageFile != null ? FileImage(pickedImageFile!) : null,
        ),
        TextButton.icon(
          onPressed: pickImage,
          icon: const Icon(Icons.camera_alt_rounded),
          label: const Paragraph(
            content: 'Add Image',
          ),
        )
      ],
    );
  }
}
