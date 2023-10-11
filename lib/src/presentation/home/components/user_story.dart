import 'package:flutter/material.dart';

class UserStory extends StatelessWidget {
  const UserStory({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.0),
      child: CircleAvatar(
        radius: 40,
      ),
    );
  }
}
