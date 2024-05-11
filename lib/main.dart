import 'package:flutter/material.dart';

import 'package:resume_app_daily_task/Drawer/drawer.dart';
import 'package:resume_app_daily_task/Loginpage/login.dart';
import 'package:resume_app_daily_task/screens/Email/Email.dart';
import 'package:resume_app_daily_task/screens/Email/Password.dart';
import 'package:resume_app_daily_task/screens/Email/seccessfullogin.dart';
import 'package:resume_app_daily_task/utils/routes.dart';
void main()
{
  runApp(const ResumeApp());
}
class ResumeApp extends StatelessWidget {
  const ResumeApp({super.key});

  @override
  Widget build(BuildContext context) {
    //  SystemChrome.setSystemUIOverlayStyle(
    //   SystemUiOverlayStyle(statusBarColor: Colors.cyan),
    //  );
    //   SystemChrome.setPreferredOrientations([
    //   DeviceOrientation.landscapeLeft,
    //   DeviceOrientation.landscapeRight
    // ]);
    return MaterialApp(
        debugShowCheckedModeBanner: false,
      // routes: Approutes.routes,
      routes:{
         //'/':(context) =>drawerPage(),
        // '/':(context) => const GmailPage(),
        //'/':(context) => Loginpage(),
        '/':(context) => Email(),
        '/pass':(context) => passwordPage(),
        '/succses':(context) =>Successful(),
      },
    );
  }
}

