import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ozet_haber/pages/main.dart';

class TurkiyeNews extends StatefulWidget {
  const TurkiyeNews({super.key});

  @override
  State<TurkiyeNews> createState() => _TurkiyeNewsState();
}

class _TurkiyeNewsState extends State<TurkiyeNews> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: CustomTitle("Türkiye"),
        ),
      
        body: Column(children: [
          Expanded(child: SingleChildScrollView(
            child: Column(children: [
              Row(children: [
                SizedBox(
                width: 360.w,
                child: Column(children: [
                  CustomContainerTurkiye(360.w,200.w),
                  NewsTitle("Üniversite sınavı sonuçları açıklandı.")
                ]
              ),)],),
      
              Row(children: [
                SizedBox(
                  width: 360.w,
                  child: Column(children: [
                    CustomContainerTurkiye(360.w,200.w),
                    NewsTitle("Ankara'da tır kazası : 1 ölü, 2 yaralı")
                  ],),
                )
              ],),
      
              Row(children: [
                SizedBox(
                  width: 360.w,
                  child: Column(children: [
                    CustomContainerTurkiye(360.w,200.w),
                    NewsTitle("İstanbul'da barajların doluluk oranı %45'e kadar düştü.")
                  ],),
                )
              ],),
      
              Row(children: [
                SizedBox(
                  width: 360.w,
                  child: Column(children: [
                    CustomContainerTurkiye(360.w,200.w),
                    NewsTitle("Bursa'da orman yangını çıktı. 3 köy boşaltıldı.")
                  ],),
                )
              ],)
      
              
            ],)
          ))
        ],),
      ),
    );
  }
}