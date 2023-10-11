import 'package:flutter/material.dart';
import 'package:instagram/src/config/text/paragraph.dart';

class Reels extends StatelessWidget {
  const Reels({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Paragraph(
          content: 'REELS',
          fontSize: 70,
        ),
      ),
    );
  }
}
