# resume_app_daily_task

A new Flutter project.


# Project Title

A brief description of what this project does and who it's for

# 1. Create a statusbar using appbar?
# Code Example:

```bash
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Home Page'),
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.cyan,
          systemNavigationBarColor:Colors.cyan,
        ),
      ),
    );
  }
}
```
# 2. Create a statusbar without using appbar?
# Code Example:
```bash
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:resume_app_daily_task/utils/routes.dart';
void main()
{
  runApp(ResumeApp());
}
class ResumeApp extends StatelessWidget {
  const ResumeApp({super.key});

  @override
  Widget build(BuildContext context) {
     SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.cyan),
     );
      SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight
    ]);
    return MaterialApp(
        debugShowCheckedModeBanner: false,
       routes: Approutes.routes,
    );
  }
}
```




