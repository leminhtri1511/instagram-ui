import 'package:flutter/material.dart';

import '../../../config/widgets/blocks/image_block.dart';
import '../../../config/widgets/blocks/image_block_second.dart';

class ProfilePost extends StatelessWidget {
  const ProfilePost({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(
                    icon: Icon(
                  Icons.crop_square_rounded,
                  size: 35,
                )),
                Tab(
                    icon: Icon(
                  Icons.person_pin_outlined,
                  size: 35,
                )),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: GridView.builder(
                  itemCount: 10,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                  ),
                  itemBuilder: (context, index) => const ImageBlockSecond(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: GridView.builder(
                  itemCount: 10,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                  ),
                  itemBuilder: (context, index) => const ImageBlock(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
