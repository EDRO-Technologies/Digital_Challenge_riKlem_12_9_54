import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../View/Login_Screen.dart';

class ModalSheet extends StatelessWidget {
  const ModalSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.4,
      padding: const EdgeInsets.symmetric(
        vertical: 40,
        horizontal: 20,
      ),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Spacer(),
          const Expanded(
            flex: 5,
            child: SizedBox(
              child: AutoSizeText.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Привет!\n',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 25,
                        fontFamily: 'RobotoSerif',
                      ),
                    ),
                    TextSpan(
                      text:
                          'Этот сервис создан чтобы сделать сбор членских взносов для студентов удобным и безопасным!',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: "RobotoSlab",
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const Spacer(),
          Flexible(
            flex: 2,
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginScreen(),
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
                      'Продолжить',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          const Spacer(
            flex: 1,
          ),
        ],
      ),
    );
  }
}
