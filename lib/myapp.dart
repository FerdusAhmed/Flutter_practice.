import 'package:flutter/material.dart';
import 'package:mypractice_project/Gridview.dart';
import 'package:mypractice_project/listview.dart';
import 'home.dart';
import 'loginpage.dart';
import 'statefull.dart';

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
      home: mystateful(

      ),

      debugShowCheckedModeBanner: false,


    );
  }
}
