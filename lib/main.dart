+
import 'package:flutter/material.dart';
import 'package:login_sysytem/screen/home.dart';
import 'package:login_sysytem/screen/login.dart';
import 'package:login_sysytem/screen/reginter.dart';
void main()
{

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context)=> Login_Screen(),
        're':(context)=> Regitar(),
        'home':(context)=> Home(),
      },
    )
  );
}
