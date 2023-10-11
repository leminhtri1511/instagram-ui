import 'package:flutter/material.dart';
import 'package:instagram/src/config/text/paragraph.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Paragraph(
          content: 'SEARCH',
          fontSize: 70,
        ),
      ),
    );
  }
}
