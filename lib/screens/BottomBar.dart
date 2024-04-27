import 'package:chatapp/data/intsa_clone_icons.dart';
import 'package:chatapp/screens/favorite.dart';
import 'package:chatapp/screens/home.dart';
import 'package:chatapp/screens/profile.dart';
import 'package:chatapp/screens/reels.dart';
import 'package:chatapp/screens/search.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import "../data/userData.dart";

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int selectedIndex = 0;
  List pages = [
    HomeScreen(),
    const SearchScreen(),
    const ReelsScreen(),
    const FavoriteScreen(),
    ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: selectedIndex == 2 ? const ReelsScreen() : pages[selectedIndex],
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
                })
              },
          items: [
            const BottomNavigationBarItem(
                icon: Icon(Insta_clone.home), label: ""),
            const BottomNavigationBarItem(icon: Icon(Icons.search), label: ""),
            BottomNavigationBarItem(
                icon: Image.asset(
                  "assets/icons/reel.png",
                  width: 30,
                  height: 30,
                ),
                label: ""),
            const BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.heart), label: ""),
            BottomNavigationBarItem(
                icon: CircleAvatar(
                  radius: 15,
                  backgroundImage: Image.network(
                          "https://images.unsplash.com/photo-1529665253569-6d01c0eaf7b6?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D")
                      .image,
                ),
                label: ""),
          ]),
    );
  }
}
