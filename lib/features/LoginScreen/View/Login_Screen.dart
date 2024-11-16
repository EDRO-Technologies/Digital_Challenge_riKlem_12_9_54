import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hahatonchikk/features/MainScreen/View/Main_Screen.dart';

import '../Widgets/Modal_Sheet.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _login = TextEditingController();
  final TextEditingController _password = TextEditingController();

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _showModalSheet();
    });


  }

  void _showModalSheet() {
    showModalBottomSheet(
      context: context,
      showDragHandle: true,
      backgroundColor: Colors.transparent,
      builder: (context) {
        return const ModalSheet();
      },
    );
  }
  double _turns1 = 0;
  double _turns2 = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 40,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                flex: 3,
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Image.asset('assets/images/logo.png'),
                    ),
                    const Expanded(
                      flex: 3,
                      child: AutoSizeText.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'СурГУ\n',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 45,
                                fontFamily: 'RobotoSerif',
                              ),
                            ),
                            TextSpan(
                              text:
                                  'Сургутский государственный университет',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontFamily: "RobotoSlab",
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )),
            const Spacer(),
            const AutoSizeText(
              'Вход',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w600,
                fontFamily: "RobotoSerif",
              ),
            ),
            const Spacer(),
            TextField(
              controller: _login,
              decoration: InputDecoration(
                labelText: "Логин",
                suffixIcon: Padding(
                  padding: const EdgeInsets.all(5),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(360),
                    onTap: () {
                      setState(() {
                        _turns1 == 0 ? _turns1 = 360 : _turns1 = 0;
                      });
                    },
                    child: AnimatedRotation(
                      turns: _turns1,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeInOutCirc,
                      child: Ink(
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(CupertinoIcons.clear_circled),
                      ),
                    ),
                  ),
                ),
                border: const OutlineInputBorder(
                  gapPadding: 1,
                  borderSide: BorderSide(
                    color: Color(0xFF1143C0),
                    width: 1,
                  ),
                ),
              ),
            ),
            const Flexible(
              child: SizedBox(
                height: 30,
              ),
            ),
            TextField(
              controller: _password,
              decoration: InputDecoration(
                labelText: "Пароль",
                suffixIcon: Padding(
                  padding: const EdgeInsets.all(5),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(360),
                    onTap: () {
                      setState(() {
                        _turns2 == 0 ? _turns2 = 360 : _turns2 = 0;
                      });
                    },
                    child: AnimatedRotation(
                      turns: _turns2,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeInOutCirc,
                      child: Ink(
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(CupertinoIcons.clear_circled),
                      ),
                    ),
                  ),
                ),
                border: const OutlineInputBorder(
                  gapPadding: 1,
                  borderSide: BorderSide(
                    color: Color(0xFF1143C0),
                    width: 1,
                  ),
                ),
              ),
            ),
            const Flexible(
              child: SizedBox(
                height: 50,
              ),
            ),
            Flexible(
              flex: 1,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MainScreen(),
                    ),
                  );
                },
                borderRadius: BorderRadius.circular(30),
                child: Material(
                  color: Colors.transparent,
                  child: Ink(
                    height: 70,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: const Color(0xFF1143C0),
                      borderRadius: BorderRadius.circular(
                        30,
                      ),
                    ),
                    child: const Center(
                      child: AutoSizeText(
                        'Войти',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const Spacer(
              flex: 4,
            ),
          ],
        ),
      ),
    );
  }
}

