import 'package:flutter/material.dart';

import 'package:instagram/src/presentation/search/components/image_block.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15),
              child: SearchBar(
                leading: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.0),
                  child: Icon(Icons.search_rounded),
                ),
                hintText: 'Searching',
              ),
            ),
            Expanded(
              child: GridView.builder(
                itemCount: 30,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                ),
                itemBuilder: (context, index) => const ImageBlock(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
