import 'package:flutter/material.dart';
import 'package:resume_app_daily_task/screens/imagepicker/picker.dart';
import 'package:resume_app_daily_task/utils/Global_var.dart';

class form1 extends StatefulWidget {
  const form1({super.key});

  @override
  State<form1> createState() => _form1State();
}

class _form1State extends State<form1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text(' Id_Cards',style: TextStyle(

        ),),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Center(
            child: Container(
              height: 581,
              width: 300,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0,2),
                      blurRadius: 2,
                      spreadRadius: 2,
                    )
                  ],
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  CircleAvatar(
                    radius: 70,
                    backgroundImage: FileImage(fileImage!),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('$name $surname',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize:22
                  ),),
                  SizedBox(
                    height: 10,
                  ),
                  Text('$position',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize:18
                  ),),

                  Container(
                    height:344,
                    width: 300,
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ListTile(
                          leading: Text('Id_num   :',style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold

                          ),
                          ),
                          title: Text('${id_num.toString()}',style: TextStyle(
                              fontSize: 18
                          ),),
                        ),
                        ListTile(
                          leading: Text('Phone     :',style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold

                          ),
                          ),
                          title: Text('${phone.toString()}',style: TextStyle(
                              fontSize: 18
                          ),),
                        ),

                        ListTile(
                          leading: Text('D.O.B      :',style: TextStyle(

                              fontSize:18,fontWeight: FontWeight.bold


                          ),
                          ),
                          title: Text('${dob.toString()}',style: TextStyle(
                              fontSize: 18
                          ),),
                        ),

                        ListTile(
                          leading: Text('Gmail  :',style: TextStyle(

                              fontSize:18,fontWeight: FontWeight.bold


                          ),
                          ),
                          title: Text('${gmail.toString()}',style: TextStyle(
                              fontSize: 16
                          ),),
                        ),
                        ListTile(
                          leading: Text('Nationallty   :',style: TextStyle(

                              fontSize:18,fontWeight: FontWeight.bold

                          ),
                          ),
                          title: Text('${natioin.toString()}',style: TextStyle(
                              fontSize: 18
                          ),),
                        ),
                        ListTile(
                          leading: Text('Gender   :',style: TextStyle(

                              fontSize:18,fontWeight: FontWeight.bold

                          ),
                          ),
                          title: Text('${gender.toString()}',style: TextStyle(
                              fontSize: 18
                          ),),
                        ),


                      ],

                    ),
                  )
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}