import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hahatonchikk/features/AccountScreen/Widgets/Sliver_Account_Page.dart';

import '../../MainScreen/Widgets/Custom_App_Bar.dart';
import '../../Widgets/Custom_Navigation_Bar.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
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
                SliverAccountPage()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
