// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import '../data/feedData.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final List<String> ImageUrl = [
    "https://randomuser.me/api/portraits/men/71.jpg",
    "https://randomuser.me/api/portraits/men/36.jpg",
    "https://randomuser.me/api/portraits/men/51.jpg",
    "https://randomuser.me/api/portraits/men/84.jpg",
    "https://randomuser.me/api/portraits/men/38.jpg",
    "https://randomuser.me/api/portraits/men/61.jpg"
  ];
  final List<String> ProfileName = [
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
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: ImageUrl.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: ProfileWidget(
                      imagePath: ImageUrl[index],
                      ProfileName: ProfileName[index],
                    ),
                  );
                },
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.only(bottom: 10, top: 10),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return FeedWidget(
                    ProfileImg: feedPosts[index]["profileImg"],
                    feedImg: feedPosts[index]["feedImgUrl"],
                    location: feedPosts[index]["location"],
                    profileName: feedPosts[index]["userName"],
                  );
                },
                childCount: feedPosts.length,
              ),
            ),
          ),
        ],
      ),
    );
  }

  AppBar customAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      title: Text(
        "Instagram",
        style: TextStyle(fontFamily: 'Instagram', fontSize: 25),
      ),
      actions: [
        const Icon(CupertinoIcons.heart),
        GestureDetector(
            onTap: () {}, child: Image.asset("assets/images/msgicon.jpg"))
      ],
    );
  }
}

class FeedWidget extends StatelessWidget {
  final String profileName;
  final String location;
  final String ProfileImg;
  final String feedImg;
  const FeedWidget(
      {super.key,
      required this.ProfileImg,
      required this.feedImg,
      required this.location,
      required this.profileName});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: Image.network(ProfileImg).image,
                  ),
                  const SizedBox(width: 5),
                  Column(
                    crossAxisAlignment:
                        CrossAxisAlignment.start, // Align children at the start
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        profileName,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 13),
                      ),
                      Text(
                        location,
                        style: const TextStyle(
                            fontWeight: FontWeight.normal, fontSize: 13),
                      )
                    ],
                  ),
                ],
              ),
              const Icon(CupertinoIcons.ellipsis)
            ],
          ),
        ),
        Image.network(fit: BoxFit.cover, width: 500, height: 500, feedImg),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const Icon(
                    CupertinoIcons.heart,
                    size: 28,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    child: InkWell(
                      onTap: () {
                        CustomBottomModelSheet(context);
                      },
                      child: Image.asset(
                        "assets/icons/chat.png",
                        width: 22,
                        height: 22,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Image.asset(
                    "assets/icons/send.png",
                    width: 22,
                    height: 22,
                  ),
                ],
              ),
              Image.asset(
                "assets/icons/save-instagram.png",
                width: 22,
                height: 22,
              ),
            ],
          ),
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 13),
              child: CircleAvatar(
                radius: 10,
                backgroundImage: Image.network(ProfileImg).image,
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            const Text("Liked By"),
            const SizedBox(
              width: 5,
            ),
            const Text(
              "Sundaresan",
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              width: 5,
            ),
            const Text("and"),
            const SizedBox(
              width: 5,
            ),
            const Text(
              "44,685 others",
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(top: 10, left: 13, bottom: 10),
          child: Row(
            children: [
              Text(
                "JackSparrow",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 13),
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                "Best Click of you",
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Future<dynamic> CustomBottomModelSheet(BuildContext context) {
    return showModalBottomSheet(
        context: context,
        builder: (BuildContext contex) {
          return Container(
            width: double.infinity,
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  'Comments',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: Image.network(
                        "https://play-lh.googleusercontent.com/C9CAt9tZr8SSi4zKCxhQc9v4I6AOTqRmnLchsu1wVDQL0gsQ3fmbCVgQmOVM1zPru8UH",
                        height: 25,
                        width: 25,
                      ).image,
                    ),
                    const Text(
                      "Danger",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const Expanded(
                      child: Text(
                        "Why are Instagram comment sections like the worst social media comment sections ever?",
                        overflow: TextOverflow.visible,
                      ),
                    )
                  ],
                )
              ],
            ),
          );
        });
  }
}

class ProfileWidget extends StatelessWidget {
  final String ProfileName;
  final String imagePath;
  const ProfileWidget(
      {super.key, required this.ProfileName, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 80,
          width: 80,
          padding: const EdgeInsets.all(3),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
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
                borderRadius: BorderRadius.circular(50), color: Colors.white),
            child: ClipOval(
                child: Image.network(
              imagePath,
              height: 100,
            )),
          ),
        ),
        SizedBox(
          height: 3,
        ),
        Text(
          ProfileName,
          style: const TextStyle(fontSize: 11, fontWeight: FontWeight.w400),
        )
      ],
    );
  }
}
