import 'package:flutter/material.dart';
import 'package:hahatonchikk/features/LoginScreen/View/Login_Screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  final   List _allAsset = [
    "assets/images/acrimend.png",
    "assets/images/benefits.png",
    "assets/images/events.png",
    "assets/images/events_outline.png",
    "assets/images/hello.png",
    "assets/images/home.png",
    "assets/images/home_outline.png",
    "assets/images/justpeople.png",
    "assets/images/leader.png",
    "assets/images/logo.png",
    "assets/images/payment-method.png",
    "assets/images/people.png",
    "assets/images/people_outline.png",
    "assets/images/policy.png",
    "assets/images/subutnic.png",
    "assets/images/yaerscat.png",
  ];

  bool _isFirstStart = true;

  Future _checkLaunch() async {
    SharedPreferences prefs =
    await SharedPreferences.getInstance();
    setState(() {
      _isFirstStart = prefs.getBool("isFirstStart")?? true;
    });

    for(var asset in _allAsset)
    {
      await precacheImage(AssetImage(asset), context);
    }

    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => LoginScreen(isFirstStart: _isFirstStart,)));

  }

  @override
  void initState() {
    super.initState();
    _checkLaunch();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/images/logo.png")),
              borderRadius: BorderRadius.circular(20),
              color: Colors.white
            ),
          ),
        ),
      ),
    );
  }
}
