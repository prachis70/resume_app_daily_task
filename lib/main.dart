import 'package:flutter/material.dart';

import 'package:resume_app_daily_task/Drawer/drawer.dart';
import 'package:resume_app_daily_task/Loginpage/login.dart';
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
        '/':(context) => Loginpage(),
      },
    );
  }
}

