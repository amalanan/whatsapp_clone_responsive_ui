import 'package:flutter/material.dart';
import '../colors.dart';

class MobileChatAppBar extends StatelessWidget {
  const MobileChatAppBar({super.key, required this.name, required this.profileImage});
final String name;
final String profileImage;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.077,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(10),
      color: webAppBarColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back),
              ),
              CircleAvatar(
                backgroundImage: AssetImage(profileImage),
                radius: 26,
              ),
              SizedBox(width: MediaQuery.of(context).size.width * 0.01),
              Text(name, style: TextStyle(fontSize: 18)),
            ],
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.video_call, color: Colors.grey),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.call, color: Colors.grey),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.more_vert, color: Colors.grey),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
