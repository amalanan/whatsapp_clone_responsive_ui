import 'package:flutter/material.dart';
import 'package:whats_app_responsive/colors.dart';

import '../info.dart';

class WebChatAppBar extends StatelessWidget {
  const WebChatAppBar({super.key,  this.name =  '',  this.profileImage=''});
  final String name;
  final String profileImage;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.077,
      width: MediaQuery.of(context).size.width * 0.75,
      padding: EdgeInsets.all(10),
      color: webAppBarColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(profileImage),
                radius: 30,
              ),
              SizedBox(width: MediaQuery.of(context).size.width * 0.01),
              Text(name, style: TextStyle(fontSize: 18),),
            ],
          ),
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.search, color: Colors.grey),
                ),IconButton(
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
