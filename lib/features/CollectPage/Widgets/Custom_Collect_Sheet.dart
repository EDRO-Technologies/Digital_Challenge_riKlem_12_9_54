import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomCollectSheet extends StatelessWidget {
  const CustomCollectSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height * 0.7,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(20),
              ),
              child: Image.asset(
                width: size.width,
                fit: BoxFit.cover,
                'assets/images/people.png',
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Column(
                children: [
                  const Spacer(),
                  const Expanded(
                    flex: 5,
                    child: SizedBox(
                      child: AutoSizeText.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'Сбор членских взносов\n',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 25,
                                fontFamily: 'RobotoSerif',
                              ),
                            ),
                            TextSpan(
                              text:
                                  'Обязательный сбор для членов профсоюза, не получающих стипендию',
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
                        Navigator.pop(context);
                      },
                      borderRadius: BorderRadius.circular(30),
                      child: Material(
                        color: Colors.transparent,
                        child: Ink(
                          height: 70,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: const Color(0xFF2F3169),
                            borderRadius: BorderRadius.circular(
                              30,
                            ),
                          ),
                          child: Row(
                            children: [
                              const Spacer(),
                              const Expanded(
                                child: AutoSizeText(
                                  'Оплатить 2500₽',
                                  maxLines: 1,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Image.asset(
                                  'assets/images/payment-method.png',
                                  height: 30 + 20 * (size.width / 1080),
                                ),
                              ),
                            ],
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
            ),
          ),

        ],
      ),
    );
  }
}
