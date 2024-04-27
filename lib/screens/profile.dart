import 'package:chatapp/screens/tabBar/posts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import "../data/userData.dart";

class ProfileScreen extends StatelessWidget {
  String currentUserName = userDetails["userName"];
  ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Icon(Icons.menu),
            )
          ],
        ),
        body: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 100,
                width: 100,
                padding: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(75),
                    color: Colors.grey.shade400),
                child: Container(
                  padding: const EdgeInsets.all(2),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white),
                  child: ClipOval(
                      child: Image.network(
                    "https://images.unsplash.com/photo-1529665253569-6d01c0eaf7b6?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D",
                    height: 100,
                    fit: BoxFit.cover,
                  )),
                ),
              ),
              const Column(
                children: [
                  Text(
                    "54",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Posts",
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
              const Column(
                children: [
                  Text(
                    "934",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Followers",
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
              const Column(
                children: [
                  Text(
                    "1224",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Following",
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
            ],
          ),
          Align(
            child: Padding(
                padding: const EdgeInsets.only(left: 25, top: 10),
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          currentUserName,
                          style: const TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold),
                        ),
                        const Text(
                          "#introvert",
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ],
                    )
                  ],
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: InkWell(
              onTap: () {},
              child: Ink(
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Container(
                  padding: EdgeInsets.all(10),
                  width: double.infinity,
                  height: 40,
                  child: const Center(
                    child: Text(
                      "Edit Profile",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          TabBar(tabs: [
            const Tab(
              icon: Icon(
                Icons.grid_on,
                color: Colors.black,
              ),
            ),
            Tab(
              icon: Image.asset("assets/icons/reel.png", width: 35, height: 35),
            ),
            const Tab(
              icon: Icon(
                CupertinoIcons.person_alt,
                color: Colors.black,
              ),
            )
          ]),
          const Expanded(
              child: TabBarView(children: [PostsTab(), PostsTab(), PostsTab()]))
        ]),
      ),
    );
  }
}
