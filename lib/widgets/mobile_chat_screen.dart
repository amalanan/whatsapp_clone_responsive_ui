import 'package:flutter/material.dart';
import 'package:whats_app_responsive/widgets/widgets.dart';
import '../colors.dart';

class MobileChatScreen extends StatelessWidget {
  const MobileChatScreen({super.key, required this.name, required this.profileImage});
  final String name;
  final String profileImage;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          MobileChatAppBar(name:name,profileImage: profileImage),
          Expanded(child: ChatList()),
          Container(
            height: MediaQuery.of(context).size.height * 0.07,
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.all(8),
            margin: EdgeInsets.only(bottom: 4),
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: dividerColor)),
              color: chatBarMessage,
            ),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.emoji_emotions_outlined, color: Colors.grey),
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.camera_alt, color: Colors.grey),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.attach_file, color: Colors.grey),
                    )
                  ],
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 10, right: 15),
                    child: TextField(
                      decoration: InputDecoration(
                        fillColor: searchBarColor,
                        filled: true,
                        hintText: 'Type a message',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(
                            width: 0,
                            style: BorderStyle.none,
                          ),
                        ),
                        contentPadding: EdgeInsets.only(left: 20),
                      ),
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.send, color: Colors.grey),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.mic, color: Colors.grey),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
