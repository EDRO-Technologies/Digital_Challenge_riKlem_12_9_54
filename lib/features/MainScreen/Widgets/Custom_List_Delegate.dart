import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomListDelegate extends StatefulWidget {
  const CustomListDelegate({super.key});

  @override
  State<CustomListDelegate> createState() => _CustomListDelegateState();
}

class _CustomListDelegateState extends State<CustomListDelegate> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Material(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(
          20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const AutoSizeText(
              'Доступные сборы',
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.w600,
                fontFamily: 'RobotoSerif',
              ),
            ),
            SizedBox(
              height: 5 + 20 * (size.width / 1080),
            ),
            Container(
              decoration: BoxDecoration(
                color: const Color(0xFF375FC2),
                borderRadius: BorderRadius.circular(20),
              ),
              width: size.width,
              padding: EdgeInsets.only(bottom: 5 + 10 * (size.width / 1080)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(20),
                      ),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          'assets/images/people.png',
                        ),
                      ),
                    ),
                    width: size.width,
                    height: 80 + 130 * (size.width / 1080),
                  ),
                  SizedBox(
                    height: 5 + 10 * (size.width / 1080),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: 5 + 10 * (size.width / 1080)),
                    child: const AutoSizeText(
                      "Сбор членских взносов",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        fontFamily:  'RobotoSerif',
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: 5 + 10 * (size.width / 1080)),
                    child: const AutoSizeText(
                        "Обязательный сбор для членов профсоюза, не получающих стипендию",
                      maxLines: 1,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        overflow: TextOverflow.ellipsis,
                        fontFamily:  'RobotoSlab',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
