import 'package:flutter/material.dart';
import 'package:ozet_haber/constants/titles.dart';
import 'package:ozet_haber/constants/default_images.dart';
import 'package:ozet_haber/constants/world_news_list.dart';
import 'package:ozet_haber/widgets/big_container.dart';
import 'package:ozet_haber/widgets/big_sized_box.dart';
import 'package:ozet_haber/widgets/custom_title.dart';
import 'package:ozet_haber/widgets/news_title.dart';

class WorldNews extends StatelessWidget {
  const WorldNews({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: CustomTitle(worldTitle),
        ),
      
        body: Column(children: [
          Expanded(child: 
            SingleChildScrollView(child: 
              Column(children: [
                for(var i=0;i<worldNews.length;i++)
                  Row(children: [
                    BigSizedBox(
                      Column(children: [
                        BigContainer(worldPng),
                        NewsTitle(worldNews[i])
                      ])
                    )
                  ]),
              ])
            )
          )
        ])
      )
    );
  }
}