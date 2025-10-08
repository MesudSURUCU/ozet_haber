import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NewsTitle extends StatelessWidget {
  final String text;
  const NewsTitle(this.text,{super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(12.w, 1.w, 12.w, 1.w),
        child: Text(text,
          style: TextStyle(
            fontSize: 13.sp,
          ),
        ),
    );
  }
}