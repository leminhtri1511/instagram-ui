import 'package:flutter/material.dart';
import 'package:instagram/src/config/text/paragraph.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Paragraph(
          content: 'PROFILE',
          fontSize: 70,
        ),
      ),
    );
  }
}
