import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SmallContainer extends StatelessWidget {
  final String newsImage;
  const SmallContainer(this.newsImage,{super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(16)),
        image: DecorationImage(image: AssetImage(newsImage))
      ),
      width: 200.w,
      height: 135.w,
      margin: EdgeInsets.fromLTRB(10.w, 5.w, 10.w,5.w),
    );
  }
}