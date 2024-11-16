import 'package:flutter/material.dart';
import 'package:hahatonchikk/features/LoginScreen/View/Login_Screen.dart';


Future<void> main() async {
  runApp(
    MaterialApp(
      theme: ThemeData(
        bottomSheetTheme: const BottomSheetThemeData(
          dragHandleSize: Size(100, 7),
          dragHandleColor: Colors.white,
        ),
      ),
      home: const LoginScreen(),
    ),
  );
}
