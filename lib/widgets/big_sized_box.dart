import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BigSizedBox extends StatelessWidget {
  final Widget child;
  const BigSizedBox(this.child,{super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 360.w,
        child: child,
    );
  }
}