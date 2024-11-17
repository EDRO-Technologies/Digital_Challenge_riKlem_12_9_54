import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Widgets/Custom_Navigation_Bar.dart';
import '../Widgets/Custom_App_Bar.dart';
import '../Widgets/Custom_List_Delegate.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CustomScrollView(
        controller: scrollController,
        slivers: [
          const CustomAppBar(),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                const CustomListDelegate(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
