import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ozet_haber/pages/home_page.dart';

void main(){
  WidgetsFlutterBinding.ensureInitialized(); //Flutter'ın widget'larının başlatılmasını sağlar.
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]); //Uygulamanın sadece dikeyde çalışmasını sağlar.
  runApp(const MyApp());
} 

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690), // Örnek: 360x690 bir tasarım
      minTextAdapt: true, // Metinlerin de ekran boyutuna göre ayarlanması
      splitScreenMode: true, // Bölünmüş ekran modu desteği

      builder:(_ , child) {
        return MaterialApp(
          title: 'Özet Haber',
          debugShowCheckedModeBanner: false,
          theme: ThemeData.dark().copyWith(
          appBarTheme: const AppBarTheme(
            backgroundColor: Color.fromRGBO(126, 3, 3, 1),
            foregroundColor: Colors.white,
          ),
          scaffoldBackgroundColor: Color.fromRGBO(25, 24, 24, 1)
          ),
          home: child,
        );
      },
      child: const HomePage(),
    );
  }
}

class CustomTitle extends StatelessWidget {
  final String text;
  const CustomTitle(this.text,{super.key});

  @override
  Widget build(BuildContext context) {
    return Text(text,
    style: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 22.sp,
    ),
    );
  }
}

class NewsTitle extends StatelessWidget {
  final String text;
  const NewsTitle(this.text,{super.key});

  @override
  Widget build(BuildContext context) {
    return Text(text,
    style: TextStyle(
      fontSize: 13.sp,
    ),
    );
  }
}

class CustomContainerTurkiye extends StatelessWidget {
  final double width;
  final double height;
  const CustomContainerTurkiye(this.width,this.height,{super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        //color: Color.fromRGBO(40, 40, 40, 1),
        borderRadius: BorderRadius.all(Radius.circular(16)),
        image: DecorationImage(image: AssetImage("assets/defaultImages/turkiye.png"))
      ),
      width: width,
      height: height,
      margin: EdgeInsets.fromLTRB(12.w, 5.w, 12.w,5.w),
    );
  }
}

class CustomContainerDunya extends StatelessWidget {
  final double width;
  final double height;
  const CustomContainerDunya(this.width,this.height,{super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        //color: Color.fromRGBO(40, 40, 40, 1),
        borderRadius: BorderRadius.all(Radius.circular(16)),
        image: DecorationImage(image: AssetImage("assets/defaultImages/dunya.png"))
      ),
      width: width,
      height: height,
      margin: EdgeInsets.fromLTRB(12.w, 5.w, 12.w,5.w),
    );
  }
}

class NewsSizedBox extends StatelessWidget {
  final Widget child;
  const NewsSizedBox(this.child,{super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 220.w,
      child: child,
    );
  }
}