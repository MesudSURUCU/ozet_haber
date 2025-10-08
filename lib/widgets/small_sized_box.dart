import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SmallSizedBox extends StatelessWidget {
  final Widget child;
  const SmallSizedBox(this.child,{super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5.w),
      child: SizedBox(
        width: 220.w,
        child: child,
      ),
    );
  }
}