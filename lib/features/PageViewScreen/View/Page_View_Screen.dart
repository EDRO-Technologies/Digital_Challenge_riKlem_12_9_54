import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hahatonchikk/features/AccountScreen/View/Account_Page.dart';
import 'package:hahatonchikk/features/EventsScreen/View/Events_Screen.dart';
import 'package:hahatonchikk/features/MainScreen/View/Main_Screen.dart';
import 'package:hahatonchikk/features/Widgets/Custom_Navigation_Bar.dart';

class PageViewScreen extends StatefulWidget {
  const PageViewScreen({super.key});

  @override
  State<PageViewScreen> createState() => _PageViewScreenState();
}

PageController pageController = PageController();

class _PageViewScreenState extends State<PageViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.white,
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: pageController,
        children: const [
          MainScreen(),
          EventsScreen(),
          AccountScreen(),
        ],
      ),
      bottomNavigationBar: const CustomNavigationBar(),
    );
  }
}
