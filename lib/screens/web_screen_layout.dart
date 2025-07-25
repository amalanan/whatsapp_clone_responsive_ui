import 'package:flutter/material.dart';
import 'package:whats_app_responsive/colors.dart';
import '../widgets/widgets.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({super.key, this.name = '', this.profileImage = ''});

  final String name;
  final String profileImage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [WebProfileBar(), WebSearchBar(), ContactsList()],
              ),
            ),
          ),
          WebChat(name: name, profileImage: profileImage),
        ],
      ),
    );
  }
}

class WebChat extends StatelessWidget {
  const WebChat({super.key, required this.name, required this.profileImage});

  final String name;
  final String profileImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.70,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/11.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          WebChatAppBar(name: name, profileImage: profileImage),
          Expanded(child: ChatList()),
          Container(
            height: MediaQuery.of(context).size.height * 0.07,
            padding: EdgeInsets.all(10),
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
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.attach_file, color: Colors.grey),
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
                          borderRadius: BorderRadius.circular(12),
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
