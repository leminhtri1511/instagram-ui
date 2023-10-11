import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/src/presentation/gallery/gallery.dart';
import 'package:instagram/src/presentation/home/home.dart';
import 'package:instagram/src/presentation/profile/profile.dart';
import 'package:instagram/src/presentation/reels/reels.dart';
import 'package:instagram/src/presentation/search/search.dart';

var screens = [
  const Home(),
  const Search(),
  const Gallery(),
  const Reels(),
  const Profile(),
];

int currentPageIndex = 0;

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentPageIndex],
      bottomNavigationBar: NavigationBar(
        height: 65,
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home_filled),
            label: '',
          ),
          NavigationDestination(
            icon: Icon(Icons.search),
            label: '',
          ),
          NavigationDestination(
            icon: Icon(
              Icons.add_box_outlined,
            ),
            label: '',
          ),
          NavigationDestination(
            icon: Icon(Icons.video_collection_outlined),
            label: '',
          ),
          NavigationDestination(
            icon: Icon(CupertinoIcons.person_crop_circle),
            label: '',
          ),
        ],
        selectedIndex: currentPageIndex,
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
            print(currentPageIndex);
          });
        },
      ),
    );
  }
}
