# resume_app_daily_task
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

# Project Title

A brief description of what this project does and who it's for

# 3. WAP to get user info from user and set it into map and print all info by the Map(minimum 10 fields required).

* PriDefine Function Of List.
  
1. Add to List.
2. Remove Of List.
3. RemoveAt Of List.
4. Add To All List.
5. Remove In Last List.
6. Insert Value.
7. Insert The Multiple Valus.
8. Insert All.
9. Length Of List.
10. Show DataType.

# Code Example:
1.Add to list.
```bash
void main()
{

   List names=['radha','Krishna','Gopi','Madhav'];
   names.add(['prachi']);
   print(names);

}
```
2.Remove to list
```bash
void main()
{

  List names=['radha','Krishna','Gopi','Madhav'];
   names.remove(['prachi']);
   print(names);
}
```
3.RemoveAt to list
```bash
void main()
{

    List names=['radha','Krishna','Gopi','Madhav'];
   names.removeAt(['prachi']);
   print(names);
}
```
4.Remove last element
```bash
void main()
{
   List names=['radha','Krishna','Gopi','Madhav'];
   names.removeLast(['prachi']);
   print(names);
}  
```
5.Add to all of list
```bash
void main( 
{
   List names=['radha','Krishna','Gopi','Madhav'];
   names.addAll(['prachi']);
   print(names);
}
```
6.insert the list
```bash
void main()
{
   List names=['radha','Krishna','Gopi','Madhav'];
   names.insert(['prachi']);
   print(names);
}
```
7.insert multiple valus
```bash
void main()
{
   List names=['radha','Krishna','Gopi','Madhav'];
   names.insrtall(['prachi']);
   print(names);
} 
```
8.Show  Datatype
```bash
void main()
{

    List names=['radha','krishna','gopi','madhav'];
    print(names);
    print(names.runtimeType);

}
```
# 4. What is List and Map ?
List:
- List is used to representing a collection of objects. It is an ordered group of objects.

- List is collection of multiple values of any datatype. -> List is user defained datatype.

# 5.Map
- Map is an object that stores data in the form of a key-value pair.

# Code Example:
```bash
void main()
{
    Map n1={
    'Goodsname ':'mobile',
    'price':50000,
    };
    print(n1['price']);
}
```
- length of map.
```bash
void main()
{
    Map n1={
    'goodsname':'mobile',
    'price':500000,
    };
    print(n1.length);
    
}
```
# 😊...Drawer_Page...😊
<img src="https://github.com/prachis70/resume_app_daily_task/assets/149580593/0ffc44ee-aab3-48f7-804d-32203559e67e" heigth=20% width=25%>
<img src="https://github.com/prachis70/resume_app_daily_task/assets/149580593/5f38bc4f-e502-4dcf-859a-56d4aab22e0b" heigth=20% width=25%>
<img src="https://github.com/prachis70/resume_app_daily_task/assets/149580593/3444674b-913a-4e60-ad7c-479574c30f23" heigth=20% width=25%>


# 😊...Login_Pages...😊
<img src="https://github.com/prachis70/resume_app_daily_task/assets/149580593/424de22a-3896-4e67-b02a-e218aa106059" heigth=22% width=35%>
<img src="https://github.com/prachis70/resume_app_daily_task/assets/149580593/d5348b84-7eb1-43e1-ac32-8d944c1bf19d" heigth=22% width=35%>
<img src="https://github.com/prachis70/resume_app_daily_task/assets/149580593/aebd0629-4f33-4660-bbbc-b4451e92345d" heigth=22% width=35%>
<img src="https://github.com/prachis70/resume_app_daily_task/assets/149580593/4614fe22-74fb-4375-91ab-681d9eaadddb" heigth=22% width=35%>
<img src="https://github.com/prachis70/resume_app_daily_task/assets/149580593/ea1c49d3-3e91-41f6-bf89-d8ff730bdbe3" heigth=22% width=35%>


# 😊...Dynamic_TextField...😊
<img src="https://github.com/prachis70/resume_app_daily_task/assets/149580593/43f9bc32-ac72-4edc-9101-1e03572936a8" heigth=20% width=25%>
<img src="https://github.com/prachis70/resume_app_daily_task/assets/149580593/96ec6f0e-52e9-44c4-a9e0-1ec818e06e6d" heigth=20% width=25%>
<img src="https://github.com/prachis70/resume_app_daily_task/assets/149580593/bef4fc1d-da08-45d2-896c-5a8b701b9140" heigth=20% width=25%>


# 😊...Image_Picker...😊
<img src="https://github.com/prachis70/resume_app_daily_task/assets/149580593/cbca0244-1d60-4bfc-b5d9-81090a384f69" heigth=22% width=35%>
<img src="https://github.com/prachis70/resume_app_daily_task/assets/149580593/16531045-82c6-4696-ab09-9b7bc165e794" heigth=22% width=35%>
<img src="https://github.com/prachis70/resume_app_daily_task/assets/149580593/3a963e7f-7f26-4691-abbe-3e7ba8544dd7" heigth=22% width=35%>
<img src="https://github.com/prachis70/resume_app_daily_task/assets/149580593/9a6dee7e-8519-4360-a6a2-9229a16269d0" heigth=22% width=35%>













