import 'package:chatapp/data/intsa_clone_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  List<String> ImageUrl = [
    "https://randomuser.me/api/portraits/men/71.jpg",
    "https://randomuser.me/api/portraits/men/36.jpg",
    "https://randomuser.me/api/portraits/men/51.jpg",
    "https://randomuser.me/api/portraits/men/84.jpg",
    "https://randomuser.me/api/portraits/men/38.jpg",
    "https://randomuser.me/api/portraits/men/61.jpg"
  ];
  List<String> ProfileName = [
    "Susidharan",
    "Dhinesh",
    "Aashish",
    "Nishaanth",
    "Aswin",
    "Suresh"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(),
      body: Column(
        children: [
          Container(
            height: 80,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: ImageUrl.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 11),
                    child: ProfileWidget(
                      imagePath: ImageUrl[index],
                      ProfileName: ProfileName[index],
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }

  AppBar customAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      title: Container(
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Image.asset(
            "assets/images/logo.png",
            width: 120,
            height: 40,
          ),
        ),
      ),
      actions: [
        Icon(CupertinoIcons.heart),
        GestureDetector(
            onTap: () {
              print("clicked");
            },
            child: Image.asset("assets/images/msgicon.jpg"))
      ],
    );
  }
}

class ProfileWidget extends StatelessWidget {
  final String ProfileName;
  final String imagePath;
  ProfileWidget(
      {super.key, required this.ProfileName, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 55,
          width: 55,
          padding: EdgeInsets.all(3),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              gradient: const LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  colors: [
                    Color(0xfff7b553),
                    Color(0xffef732b),
                    Color(0xff5f47b9),
                    Color(0xff9437b9)
                  ])),
          child: Container(
            padding: const EdgeInsets.all(2),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30), color: Colors.white),
            child: ClipOval(
                child: Image.network(
              imagePath,
              height: 50,
            )),
          ),
        ),
        Text(
          ProfileName,
          style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
