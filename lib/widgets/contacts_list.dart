import 'package:flutter/material.dart';
import 'package:whats_app_responsive/colors.dart';
import 'package:whats_app_responsive/responsive/responsive.dart';
import 'package:whats_app_responsive/screens/screens.dart';
import 'package:whats_app_responsive/widgets/widgets.dart';
import '../info.dart';

class ContactsList extends StatelessWidget {
  ContactsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 9),
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: info.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return ResponsiveLayout(
                          mobileLayout:
                              (context) => MobileChatScreen(
                                name: info[index]['name'].toString(),
                                profileImage:
                                    info[index]['profilePic'].toString(),
                              ),
                          desktopLayout:
                              (context) => WebScreenLayout(
                                name: info[index]['name'].toString(),
                                profileImage:
                                    info[index]['profilePic'].toString(),
                              ),
                        );
                      },
                    ),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 5.0),
                  child: ListTile(
                    title: Text(
                      info[index]['name'].toString(),
                      style: TextStyle(fontSize: 17),
                    ),
                    subtitle: Padding(
                      padding: EdgeInsets.only(top: 6),
                      child: Text(
                        info[index]['message'].toString(),
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(
                        info[index]['profilePic'].toString(),
                      ),
                      radius: 30,
                    ),
                    trailing: Text(
                      info[index]['time'].toString(),
                      style: TextStyle(fontSize: 15, color: Colors.grey),
                    ),
                  ),
                ),
              ),
              Divider(color: dividerColor, indent: 85),
            ],
          );
        },
      ),
    );
  }
}
