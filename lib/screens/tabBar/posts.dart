import 'package:flutter/material.dart';
import '../../data/feedData.dart';

class PostsTab extends StatelessWidget {
  const PostsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: feedPosts.length,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.all(1),
          child: Container(
            color: Colors.black,
            child: Image.network(feedPosts[index]["feedImgUrl"],
                fit: BoxFit.cover),
          ),
        );
      },
    );
  }
}
