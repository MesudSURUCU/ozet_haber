import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ozet_haber/pages/main.dart';
import 'package:ozet_haber/pages/turkiye_news.dart';
import 'package:ozet_haber/pages/world_news.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Center(child: CustomTitle("Ana Sayfa")),
        ),
        body: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      children: [
                        CustomTitle("Türkiye")
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(children: [
                              Column(children: [
                                NewsSizedBox(Column(
                                  children: [
                                    CustomContainerTurkiye(200.w, 150.w),
                                    NewsTitle("Üniversite sınavı sonuçları açıklandı.")
                                  ],
                                ))
                                ],),
      
                              Column(children: [
                                NewsSizedBox(Column(
                                  children: [
                                    CustomContainerTurkiye(200.w, 150.w),
                                    NewsTitle("Ankara'da tır kazası : 1 ölü, 2 yaralı")
                                  ],
                                ))
                              ],),
      
                              Column(children: [
                                NewsSizedBox(Column(
                                      children: [
                                        CustomContainerTurkiye(200.w, 150.w),
                                        NewsTitle("İstanbul'da barajların doluluk oranı %45'e kadar düştü.")
                                      ],
                                    ),)
                              ],),
      
                              Column(children: [
                                ElevatedButton(onPressed:() {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => TurkiyeNews()));
                                }, child: const Text("Daha Fazla"))
                              ],)
                            ],),
                          ),
                        ),
                      ],
                    ),
      
                    Row(children: [
                      CustomTitle("Dünya")
                    ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(children: [
                              Column(children: [
                                NewsSizedBox(Column(children: [
                                  CustomContainerDunya(200.w, 150.w),
                                  NewsTitle("Hindistan'da sel felaketi")
                                ],))
                              ],),
                              
                              Column(children: [
                                NewsSizedBox(Column(children: [
                                  CustomContainerDunya(200.w, 150.w),
                                  NewsTitle("Trump, Putin ile Alaska'da görüştü.")
                                ],))
                              ],),
      
                              Column(children: [
                                NewsSizedBox(Column(children: [
                                  CustomContainerDunya(200.w, 150.w),
                                  NewsTitle("Avrupa'da aşırı sıcağa bağlı ölümlerde ciddi artış yaşanıyor.")
                                ],))
                              ],),
      
                              Column(children: [
                                ElevatedButton(onPressed:() {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => WorldNews()));
                                }, child: const Text("Daha Fazla"))
                              ],)
      
                            ],),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),),
            ),
          ],
        )
      ),
    );
  }
}