import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTitle extends StatelessWidget {
  final String text;
  const CustomTitle(this.text,{super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(5.w, 1.w, 5.w, 1.w),
      child: Text(text,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 22.sp,
        ),
      ),
    );
  }
}