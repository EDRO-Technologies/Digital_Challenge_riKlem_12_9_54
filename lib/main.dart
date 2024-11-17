
import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hahatonchikk/SplashScreen.dart';
import 'package:hahatonchikk/features/CollectPage/View/Collect_Page.dart';
import 'package:hahatonchikk/features/ListScreen/View/List_Screen.dart';
import 'package:hahatonchikk/features/LoginScreen/View/Login_Screen.dart';
import 'package:hahatonchikk/features/PageViewScreen/View/Page_View_Screen.dart';
import 'package:rive/rive.dart';

import 'firebase_options.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  unawaited(RiveFile.initialize());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        bottomSheetTheme: BottomSheetThemeData(
          dragHandleSize: Size(100, 7),
          dragHandleColor: Colors.white
        )
      ),
      home: SplashScreen(),
    );
  }
}