import 'package:chatapp/data/intsa_clone_icons.dart';
import 'package:chatapp/screens/favorite.dart';
import 'package:chatapp/screens/home.dart';
import 'package:chatapp/screens/profile.dart';
import 'package:chatapp/screens/reels.dart';
import 'package:chatapp/screens/search.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int selectedIndex = 0;
  List pages = [
    HomeScreen(),
    SearchScreen(),
    ReelsScreen(),
    FavoriteScreen(),
    ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: selectedIndex,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          onTap: (index) => {
                setState(() {
                  selectedIndex = index;
                  print(selectedIndex);
                })
              },
          items: const [
            BottomNavigationBarItem(icon: Icon(Insta_clone.home), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.video_camera_back), label: ""),
            BottomNavigationBarItem(
                icon: Icon(
                  CupertinoIcons.heart_fill,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(
                  CupertinoIcons.person_solid,
                ),
                label: "")
          ]),
    );
  }
}
