import 'package:flutter/material.dart';
import 'package:whats_app_responsive/colors.dart';

class WebSearchBar extends StatelessWidget {
  const WebSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.06,
      width: MediaQuery.of(context).size.width * 0.29,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: dividerColor)),
      ),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: searchBarColor,
          prefixIcon: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Icon(Icons.search, color: Colors.grey, size: 20),
          ),
          hintStyle: TextStyle(fontSize: 14, color: Colors.grey),
          hintText: 'Search or Start a new Chat',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(width: 0, style: BorderStyle.none),
          ),
          contentPadding: EdgeInsets.all(10),
        ),
      ),
    );
  }
}
