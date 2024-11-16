import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hahatonchikk/features/EventsScreen/View/Events_Screen.dart';

class CustomListDelegate extends StatefulWidget {
  const CustomListDelegate({super.key});

  @override
  State<CustomListDelegate> createState() => _CustomListDelegateState();
}

List<Map<String, dynamic>> _mapsList = [
  {
    "url": "assets/images/yaerscat.png",
    "name": "Игра слов",
    "description":
        "Соберите команду и примите участие в интеллектуальной игре от Профсоюза, где вы можете выиграть крутые призы!",
    'isCharity': false,
  },
  {
    "url": "assets/images/subutnic.png",
    "name": "Субботник НГДУ",
    "description":
        "Соберите команду и примите участие в интеллектуальной игре от Профсоюза, где вы можете выиграть крутые призы!",
    'isCharity': true,
  }
];

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
              'Мероприятия',
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
            for (int i = 0; i < 2; i++)
              InfoCard(
                url: _mapsList[i]["url"],
                name: _mapsList[i]["name"],
                description: _mapsList[i]["description"],
                isCherity: _mapsList[i]["isCharity"],
              ),
          ],
        ),
      ),
    );
  }
}

class InfoCard extends StatefulWidget {
  String url;
  String name;
  String description;
  bool isCherity;

  InfoCard(
      {super.key,
      required this.url,
      required this.name,
      required this.description,
      required this.isCherity});

  @override
  State<InfoCard> createState() => _InfoCardState();
}

class _InfoCardState extends State<InfoCard> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: InkWell(
        onTap: () {
          showModalBottomSheet(
            useRootNavigator: true,
            context: context,
            showDragHandle: true,
            isScrollControlled: true,
            backgroundColor: Colors.transparent,
            builder: (context) {
              return Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.8,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(30),
                  ),
                ),
                child: Column(
                  children: [
                    Flexible(
                      child: Image.asset(
                        widget.url,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 30,
                          horizontal: 20,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: AutoSizeText(
                                widget.name,
                                style: const TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'RobotoSerif',
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: AutoSizeText(
                                widget.description,
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'RobotoSlab',
                                ),
                              ),
                            ),
                            Expanded(
                              child: Material(
                                color: Colors.transparent,
                                child: InkWell(
                                  onTap: () {},
                                  borderRadius: BorderRadius.circular(35),
                                  child: Ink(
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(35),
                                      color: const Color(0xFF1143C0),
                                    ),
                                    child: const Center(
                                      child: AutoSizeText(
                                        'Учавствовать',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        },
        borderRadius: BorderRadius.circular(20),
        child: Ink(
          decoration: BoxDecoration(
            color: const Color(0xFF0D9739),
            borderRadius: BorderRadius.circular(20),
          ),
          width: size.width,
          padding: EdgeInsets.only(
            bottom: 5 + 10 * (size.width / 1080),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(20),
                  ),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      widget.url,
                    ),
                  ),
                ),
                alignment: Alignment.topRight,
                child: Visibility(
                  visible: widget.isCherity,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    decoration: BoxDecoration(
                      color: Color(0xFF375FC2),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: AutoSizeText(
                      'Благотворительное',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
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
                child: AutoSizeText(
                  widget.name,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'RobotoSerif',
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: 5 + 10 * (size.width / 1080)),
                child: AutoSizeText(
                  widget.description,
                  maxLines: 1,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    overflow: TextOverflow.ellipsis,
                    fontFamily: 'RobotoSlab',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
