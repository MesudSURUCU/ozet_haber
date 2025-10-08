import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ozet_haber/constants/colors.dart';
import 'package:ozet_haber/constants/titles.dart';
import 'package:ozet_haber/pages/home_page.dart';

void main(){
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const MyApp());
} 

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,

      builder:(_ , child) {
        return MaterialApp(
          title: appTitle,
          debugShowCheckedModeBanner: false,
          theme: ThemeData.dark().copyWith(
            appBarTheme: AppBarTheme(
              backgroundColor: primaryColor,
              foregroundColor: secondaryColor,
            ),
            scaffoldBackgroundColor: darkGray
          ),
          home: child,
        );
      },
      child: const HomePage(),
    );
  }
}