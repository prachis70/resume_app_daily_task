import 'package:flutter/material.dart';

import 'package:resume_app_daily_task/Drawer/drawer.dart';
import 'package:resume_app_daily_task/Loginpage/login.dart';
import 'package:resume_app_daily_task/screens/Dynamic_TextField/Textfield.dart';
import 'package:resume_app_daily_task/screens/Email/Email.dart';
import 'package:resume_app_daily_task/screens/Email/Password.dart';
import 'package:resume_app_daily_task/screens/Email/seccessfullogin.dart';
import 'package:resume_app_daily_task/screens/SnackBar/snackbar.dart';
import 'package:resume_app_daily_task/screens/imagepicker/picker.dart';
import 'package:resume_app_daily_task/screens/ragistation_form/form.dart';
import 'package:resume_app_daily_task/screens/ragistation_form/form1.dart';
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
        // '/':(context) => Email(),
        // '/pass':(context) => passwordPage(),
        // '/succses':(context) =>Successful(),
        //'/':  (context) => bar(),
       // '/': (context) => imagepicker(),
        '/':(context) => form(),
        '/f1': (context) => form1(),
        //'/':(context) => Dynamictxtfield(),
      },
    );
  }
}

