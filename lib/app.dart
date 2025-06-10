import 'package:flutter/material.dart';
import 'myapp.dart';
import 'home.dart';
import 'loginpage.dart';
import 'package:device_preview/device_preview.dart';

void main()
{
  runApp(
    DevicePreview(
        enabled: true,
        builder: (context)=>MyApp())
     );
}