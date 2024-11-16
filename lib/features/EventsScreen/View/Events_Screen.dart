import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../MainScreen/Widgets/Custom_App_Bar.dart';
import '../../EventsScreen/Widgets/Custom_List_Delegate.dart';
import '../../Widgets/Custom_Navigation_Bar.dart';

class EventsScreen extends StatefulWidget {
  const EventsScreen({super.key});

  @override
  State<EventsScreen> createState() => _EventsScreenState();
}


class _EventsScreenState extends State<EventsScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: CustomScrollView(
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
      ),
    );
    ;
  }
}
