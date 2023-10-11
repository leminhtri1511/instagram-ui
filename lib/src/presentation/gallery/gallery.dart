import 'package:flutter/material.dart';
import 'package:instagram/src/config/text/paragraph.dart';

class Gallery extends StatelessWidget {
  const Gallery({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Paragraph(
          content: 'GALLERY',
          fontSize: 70,
        ),
      ),
    );
  }
}
