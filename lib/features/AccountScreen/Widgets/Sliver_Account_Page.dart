import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SliverAccountPage extends StatefulWidget {
  const SliverAccountPage({super.key});

  @override
  State<SliverAccountPage> createState() => _SliverAccountPageState();
}

class _SliverAccountPageState extends State<SliverAccountPage> {
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
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: const AutoSizeText(
                'Аккаунт',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'RobotoSerif',
                ),
              ),
            ),
            SizedBox(
              height: 5 + 20 * (size.width / 1080),
            ),
            SizedBox(
              height: 50 + 120 * (size.width / 1080),
              width: 50 + 80 * (size.width / 1080),
              child: Stack(
                children: [
                  Center(
                    child: CircleAvatar(
                      backgroundColor: Color(0xFFD9D9D9),
                      radius: 60,
                      child: Image.asset(
                        'assets/images/justpeople.png',
                        height: 40 + 50 * (size.width / 1080),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: ClipOval(
                      child: Material(
                        child: InkWell(
                          onTap: () {},
                          child: Ink(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 12, color: Color(0xFF000000))
                                ]),
                            child: Icon(Icons.edit),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            AutoSizeText(
              '+79821347218',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w500,
                fontFamily: 'RobotoSlab',
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 12,
                    )
                  ],
                ),
                width: size.width,
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          child: Icon(
                            Icons.info,
                            color: Colors.white,
                          ),
                          backgroundColor: Color(0xFFFF4242),
                        ),
                        SizedBox(width: 10,),
                        AutoSizeText(
                          'Личная информация',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'RobotoSlab',
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
