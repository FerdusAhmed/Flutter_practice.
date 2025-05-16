import 'package:flutter/material.dart';
import 'home.dart';
import 'loginpage.dart';

class mynewapp extends StatelessWidget {
  const mynewapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Myproject',
      //home: Thisishome(),
      home: loging(),

    );
  }
}
