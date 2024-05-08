import 'package:flutter/cupertino.dart';
import 'package:resume_app_daily_task/screens/Homescreen/Homepage.dart';

class Approutes{
  static Map <String, Widget Function(BuildContext)> routes={
    '/':(context) => homepage(),
  };
}