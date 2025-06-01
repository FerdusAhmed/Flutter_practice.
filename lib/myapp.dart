import 'package:flutter/material.dart';
import 'package:mypractice_project/Gridview.dart';
import 'package:mypractice_project/listview.dart';
import 'home.dart';
import 'loginpage.dart';
import 'statefull.dart';
import 'todoapp.dart';
import 'mediaquery.dart';
import 'module-9.dart';



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Myproject',
      //home: Thisishome(),
      // home: loging(),
      // home: listview(),
     // home: Gridv(),
     // home: mystatefull(),
     // home: todo(),
     // home: mediaquery(),
      home: ratio(),




      debugShowCheckedModeBanner: false,


    );
  }
}
