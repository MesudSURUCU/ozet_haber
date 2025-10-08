import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BigContainer extends StatelessWidget {
  final String newsImage;
  const BigContainer(this.newsImage,{super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(16)),
        image: DecorationImage(image: AssetImage(newsImage))
      ),
      width: 300.w,
      height: 200.w,
      margin: EdgeInsets.fromLTRB(0.w, 5.w, 0.w, 5.w),
    );
  }
}