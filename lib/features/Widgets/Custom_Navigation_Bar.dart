import 'dart:async';

import 'package:flutter/material.dart';
import 'package:scroll_to_hide/scroll_to_hide.dart';

import '../PageViewScreen/View/Page_View_Screen.dart';

class CustomNavigationBar extends StatefulWidget {
  const CustomNavigationBar({super.key});

  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

final ScrollController scrollController = ScrollController();

class _CustomNavigationBarState extends State<CustomNavigationBar> {

  int indexNavigationBar = 0;



  @override
  Widget build(BuildContext context) {
    return ScrollToHide(
      scrollController: scrollController,
      duration: const Duration(milliseconds: 300),
      hideDirection: Axis.vertical,
      height: 80,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: const [
              BoxShadow(
                blurRadius: 15.4,
                spreadRadius: 1,
                color: Color(0x41000000),
              ),
            ],
          ),
          child: BottomNavigationBar(
            showSelectedLabels: false,
            showUnselectedLabels: false,
            elevation: 0,
            iconSize: 28,
            selectedFontSize: 0,
            unselectedFontSize: 0,
            backgroundColor: Colors.transparent,
            currentIndex: indexNavigationBar,
            onTap: (index) {
              setState(() {
                indexNavigationBar = index;
                pageController.animateToPage(
                  indexNavigationBar,
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOutExpo,
                );
              });
            },
            items: [
              BottomNavigationBarItem(
                icon: indexNavigationBar == 0
                    ? Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 5),
                      decoration: const BoxDecoration(
                        color: Color(0xFF5E7BC3),
                        borderRadius: BorderRadius.horizontal(
                          right: Radius.circular(20),
                          left: Radius.circular(20),
                        ),
                      ),
                      child: Image.asset(
                        'assets/images/home.png',
                        width: 28,
                        height: 28,
                      ),
                    )
                    : Image.asset(
                        'assets/images/home_outline.png',
                        width: 28,
                        height: 28,
                      ),
                label: '',
                tooltip: 'Дом',
              ),
              BottomNavigationBarItem(
                icon: indexNavigationBar == 1
                    ? Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 5),
                        decoration: const BoxDecoration(
                          color: Color(0xFF5E7BC3),
                          borderRadius: BorderRadius.horizontal(
                            right: Radius.circular(20),
                            left: Radius.circular(20),
                          ),
                        ),
                        child: Image.asset(
                          'assets/images/events.png',
                          width: 28,
                          height: 28,
                        ),
                      )
                    : Image.asset(
                        'assets/images/events_outline.png',
                        width: 28,
                        height: 28,
                      ),
                label: '',
                tooltip: 'Мероприятия',
              ),
              BottomNavigationBarItem(
                icon: indexNavigationBar == 2
                    ? Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 5),
                        decoration: const BoxDecoration(
                          color: Color(0xFF5E7BC3),
                          borderRadius: BorderRadius.horizontal(
                            right: Radius.circular(20),
                            left: Radius.circular(20),
                          ),
                        ),
                        child: Image.asset(
                          'assets/images/justpeople.png',
                          width: 28,
                          height: 28,
                        ),
                      )
                    : Image.asset(
                        'assets/images/people_outline.png',
                        width: 28,
                        height: 28,
                      ),
                label: '',
                tooltip: 'Аккаунт',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
