import 'package:flutter/material.dart';
import 'package:ozet_haber/constants/button_texts.dart';
import 'package:ozet_haber/constants/titles.dart';
import 'package:ozet_haber/constants/default_images.dart';
import 'package:ozet_haber/constants/turkiye_news_list.dart';
import 'package:ozet_haber/constants/world_news_list.dart';
import 'package:ozet_haber/pages/turkiye_news.dart';
import 'package:ozet_haber/pages/world_news.dart';
import 'package:ozet_haber/widgets/custom_title.dart';
import 'package:ozet_haber/widgets/news_title.dart';
import 'package:ozet_haber/widgets/small_container.dart';
import 'package:ozet_haber/widgets/small_sized_box.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Center(child: CustomTitle(mainPageTitle))),
        body: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(children: [CustomTitle(turkiyeTitle)]),

                    Row(
                      children: [
                        Expanded(
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                for (var i = 0; i < 3; i++)
                                  Column(
                                    children: [
                                      SmallSizedBox(
                                        Column(
                                          children: [
                                            SmallContainer(turkiyePng),
                                            NewsTitle(turkiyeNews[i]),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                Column(
                                  children: [
                                    ElevatedButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => TurkiyeNews(),
                                          ),
                                        );
                                      },
                                      child: Text(ButtonTextConst.btnMore),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),

                    Row(children: [CustomTitle(worldTitle)]),

                    Row(
                      children: [
                        Expanded(
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                for (var i = 0; i < 3; i++)
                                  Column(
                                    children: [
                                      SmallSizedBox(
                                        Column(
                                          children: [
                                            SmallContainer(worldPng),
                                            NewsTitle(worldNews[i]),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                Column(
                                  children: [
                                    ElevatedButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => WorldNews(),
                                          ),
                                        );
                                      },
                                      child: Text(ButtonTextConst.btnMore),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
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
