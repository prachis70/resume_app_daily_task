import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:resume_app_daily_task/screens/Drawer/drawer.dart';
import 'package:resume_app_daily_task/utils/routes.dart';
void main()
{
  runApp(ResumeApp());
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
       //routes: Approutes.routes,
      routes: {
          '/':(context) => drawerPage(),
      },
    );
  }
}

