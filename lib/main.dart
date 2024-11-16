import 'package:flutter/material.dart';
import 'package:hahatonchikk/features/LoginScreen/View/Login_Screen.dart';

void main() {
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
