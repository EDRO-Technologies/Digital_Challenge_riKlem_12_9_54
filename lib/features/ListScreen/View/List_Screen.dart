import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({super.key});

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  int _currentIndex = 0;

  List<String> name = ['Все', 'Оплатили', 'Не оплатили'];

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Expanded(
            flex: 8,
            child: ListView(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 40,
              ),
              children: const [
                AutoSizeText(
                  'Участники',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                    fontFamily: "RobotoSerif",
                  ),
                )
              ],
            ),
          ),
          const Divider(
            color: Color(0xFFE7E7E7),
          ),
          Expanded(
            flex: 2,
            child: Column(
              children: [
                Expanded(
                  child: ListView(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                    scrollDirection: Axis.horizontal,
                    children: [
                      for (int i = 0; i < name.length; i++)
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                _currentIndex = i;
                              });
                            },
                            borderRadius: BorderRadius.circular(10),
                            child: Ink(
                              height: MediaQuery.of(context).size.height,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: _currentIndex == i
                                    ? Color(0xFF375FC2)
                                    : Color(0xFFECECEC),
                              ),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 15,
                                vertical: 5,
                              ),
                              child: Center(
                                child: AutoSizeText(
                                  name[i],
                                  style: TextStyle(
                                    color: _currentIndex == i
                                        ? Colors.white
                                        : Color(0xFF949494),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(15),
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Ink(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color(0xFFE7E7E7),
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 5,
                        ),
                        child: const Center(
                          child: AutoSizeText(
                            'Вернуться назад',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF434343),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Spacer()
              ],
            ),
          )
        ],
      ),
    );
  }
}
