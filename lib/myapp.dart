import 'package:flutter/material.dart';
import 'package:mypractice_project/Gridview.dart';
import 'package:mypractice_project/listview.dart';
import 'home.dart';
import 'loginpage.dart';
import 'statefull.dart';
import 'todoapp.dart';
import 'mediaquery.dart';
import 'module-9.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'class3.dart';




class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //Set the fit size (Find your UI design, look at the dimensions of the device screen and fill it in,unit in dp)
    return ScreenUtilInit(
        designSize: const Size(360, 690),
    minTextAdapt: true,
    splitScreenMode: true,
    // Use builder only if you need to use library outside ScreenUtilInit context
    builder: (_ , child) {
    return MaterialApp(
      title: 'Myproject',
      //home: Thisishome(),
      // home: loging(),
      // home: listview(),
     // home: Gridv(),
     // home: mystatefull(),
     // home: todo(),
     // home: mediaquery(),
      //home: ratio(),
      home: class3(),




      debugShowCheckedModeBanner: false,

      // You can use the library anywhere in the app even in theme
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
      ),

    );
    },



    );
  }
}
