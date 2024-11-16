
import 'package:flutter/material.dart';
import 'package:hahatonchikk/features/CollectPage/View/Collect_Page.dart';
import 'package:hahatonchikk/features/ListScreen/View/List_Screen.dart';
import 'package:hahatonchikk/features/LoginScreen/View/Login_Screen.dart';
import 'package:hahatonchikk/features/PageViewScreen/View/Page_View_Screen.dart';


Future<void> main() async {
  runApp(
    MaterialApp(
      theme: ThemeData(
        bottomSheetTheme: const BottomSheetThemeData(
          dragHandleSize: Size(100, 7),
          dragHandleColor: Colors.white,
        ),
      ),
     home: LoginScreen(),
     // home: const PageViewScreen(),
    ),
  );
}
