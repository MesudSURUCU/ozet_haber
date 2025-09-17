import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ozet_haber/pages/main.dart';

class WorldNews extends StatefulWidget {
  const WorldNews({super.key});

  @override
  State<WorldNews> createState() => _WorldNewsState();
}

class _WorldNewsState extends State<WorldNews> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: CustomTitle("Dünya"),
        ),
      
        body: Column(children: [
          Expanded(child: SingleChildScrollView(
            child: Column(children: [
              Row(children: [
                SizedBox(
                width: 360.w,
                child: Column(children: [
                  CustomContainerDunya(360.w,200.w),
                  NewsTitle("Hindistan'da sel felaketi")
                ]
              ),)],),
              
              Row(children: [
                SizedBox(
                width: 360.w,
                child: Column(children: [
                  CustomContainerDunya(360.w,200.w),
                  NewsTitle("Trump, Putin ile Alaska'da görüştü.")
                ]
              ),)],),
      
              Row(children: [
                SizedBox(
                width: 360.w,
                child: Column(children: [
                  CustomContainerDunya(360.w,200.w),
                  NewsTitle("Avrupa'da aşırı sıcağa bağlı ölümlerde ciddi artış yaşanıyor.")
                ]
              ),)],),
      
              Row(children: [
                SizedBox(
                width: 360.w,
                child: Column(children: [
                  CustomContainerDunya(360.w,200.w),
                  NewsTitle("İtalya'da orman yangını... Alevler kasabaya yaklaştı.")
                ]
              ),)],),
      
            ],),))
        ],),
      ),
    );
  }
}