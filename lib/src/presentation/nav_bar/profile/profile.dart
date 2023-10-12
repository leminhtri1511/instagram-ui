import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/src/config/widgets/text/paragraph.dart';
import 'package:instagram/src/presentation/nav_bar/profile/profile_post.dart';


class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Paragraph(content: 'Le Tri'),
        actions: const [
          Icon(Icons.add_box_outlined),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Icon(Icons.menu_rounded),
          ),
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: [
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  CupertinoIcons.person_crop_circle,
                  size: 80,
                ),
                Spacer(),
                // SizedBox(width: 70),
                StatusColumn(statusNumber: 0, type: 'Post'),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 35.0),
                  child: StatusColumn(statusNumber: 999, type: 'Followers'),
                ),
                StatusColumn(statusNumber: 0, type: 'Following'),
              ],
            ),
            Align(
              alignment: AlignmentDirectional.topStart,
              child: Paragraph(content: 'leminhtri1511'),
            ),
            ProfilePost(),
          ],
        ),
      ),
    );
  }
}

class StatusColumn extends StatelessWidget {
  const StatusColumn({
    super.key,
    this.statusNumber,
    this.type,
  });

  final int? statusNumber;
  final String? type;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Paragraph(
          content: statusNumber.toString(),
          fontSize: 25,
        ),
        Paragraph(
          content: type.toString(),
        ),
      ],
    );
  }
}
