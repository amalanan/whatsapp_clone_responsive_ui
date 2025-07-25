import 'package:flutter/material.dart';
import 'package:whats_app_responsive/colors.dart';
import 'package:whats_app_responsive/responsive/responsive.dart';
import 'package:whats_app_responsive/screens/screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Whatsapp UI',
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: backgroundColor),
        home: ResponsiveLayout(mobileLayout: (context) => MobileLayout() , desktopLayout: (context) => WebScreenLayout())
    );
  }}
