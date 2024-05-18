
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:resume_app_daily_task/utils/Global_var.dart';
import 'package:image_picker/image_picker.dart';
import 'package:resume_app_daily_task/screens/Dynamic_TextField/Textfield.dart';
import 'package:resume_app_daily_task/utils/Global_var.dart';

ImagePicker imagePicker=ImagePicker();
File ?fileImage;

class idPage extends StatefulWidget {
  const idPage({super.key});

  @override
  State<idPage> createState() => _idPageState();
}
TextEditingController txtName=TextEditingController();
TextEditingController txtSurname=TextEditingController();
TextEditingController txtPosition=TextEditingController();
TextEditingController txtId=TextEditingController();
TextEditingController txtPhone=TextEditingController();
TextEditingController txtGmail=TextEditingController();
TextEditingController txtDob=TextEditingController();
TextEditingController txtNatioin=TextEditingController();
GlobalKey<FormState> formKey=GlobalKey();

class _idPageState extends State<idPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Color(0XFF1b5bb5),
        title:const  Center(
          child: Text('Registratioin From',style: TextStyle(
              color: Colors.white
          ),),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Form(
          key: formKey,
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 250),
                child: Text('Hello!',style: TextStyle(fontSize:22,fontFamily: 'poppins',),),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 108),
                child: Text('Welcome to Registratioin....',style: TextStyle(fontSize:16,fontFamily: 'poppins',),),
              ),

              SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.pink,
                    radius: 80,
                    backgroundImage:(fileImage!=null)? FileImage(fileImage!):null,

                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(onPressed: () async {

                        XFile? xfileImage= await imagePicker.pickImage(source: ImageSource.camera);
                        setState(() {
                          fileImage=File(xfileImage!.path);
                        });

                      }, icon: Icon(Icons.camera,size: 40,color: Color(0XFF1b5bb5),)),
                      IconButton(onPressed: () async {
                        XFile? xfileImage= await imagePicker.pickImage(source: ImageSource.gallery);
                        setState(() {
                          fileImage=File(xfileImage!.path);
                        });

                      }, icon: Icon(Icons.photo,size: 40,color: Color(0XFF1b5bb5),)),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: TextFormField(
                              controller: txtName,

                              validator: (value) {

                                if(value!.isEmpty)
                                {
                                  return 'field must be required!!';
                                }
                              },
                              decoration: InputDecoration(
                                  label: Text('First Name'),
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.black,width: 1),
                                      borderRadius: BorderRadius.circular(10)
                                  )
                              )
                          ),
                        ),
                      ),
                      SizedBox(width: 10,),
                      Expanded(child: Padding(
                        padding: const EdgeInsets.only(right: 20,),
                        child: TextFormField(
                          controller: txtSurname,
                          validator: (value) {

                            if(value!.isEmpty)
                            {
                              return 'field must be required!!';
                            }
                          },

                          decoration: InputDecoration(
                              label: Text('Last Name'),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black,width: 1),
                                  borderRadius: BorderRadius.circular(10)
                              )
                          ),
                        ),
                      ),)
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  box1(controller: txtPosition),

                  SizedBox(
                    height: 15,
                  ),
                  id(controller: txtId),

                  SizedBox(
                    height: 15,
                  ),
                  phone_num_1(controller: txtPhone),

                  SizedBox(
                    height: 15,
                  ),
                  gmail_box(controller: txtGmail),

                  SizedBox(
                    height: 15,
                  ),
                  dob_box(controller: txtDob),

                  SizedBox(
                    height: 15,
                  ),
                  Natioin_box(controller: txtNatioin),

                  RadioListTile(value: 'male', groupValue: gender, onChanged: (value) {
                    setState(() {
                      gender=value!;
                    });

                  },title: Text('Male'),
                    activeColor: Colors.blue.shade900,
                    hoverColor:Colors.pink,
                  ),
                  RadioListTile(value: 'female', groupValue: gender, onChanged: (value) {
                    setState(() {
                      gender=value!;
                    });

                  },title: Text('Female'),
                    activeColor: Colors.blue.shade900,
                    hoverColor:Colors.pink,
                  ),
                  RadioListTile(value: 'other', groupValue: gender, onChanged: (value) {
                    setState(() {
                      gender=value!;
                    });

                  },title: Text('Other'),
                    activeColor: Colors.blue.shade900,
                    hoverColor:Colors.pink,
                  ),

                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 50,
                          width: 270,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    spreadRadius: 2,
                                    blurRadius: 2,
                                    offset: Offset(0,2),
                                    color: Colors.grey
                                )
                              ],
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Center(child: Text('All Add to TextFiled',style: TextStyle(
                            fontSize:16,
                            fontWeight: FontWeight.bold,
                            color: Color(0XFF1b5bb5),
                          ),)),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Column(
                          children: [
                            GestureDetector(onTap: () {
                              TextEditingController txtController=TextEditingController();
                              setState(() {
                                txtControllerList.add(txtController);
                              });
                            },
                              child: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                        spreadRadius: 2,
                                        blurRadius: 2,
                                        offset: Offset(0,2),
                                        color: Colors.grey
                                    )
                                  ],
                                ),
                                child: Icon(Icons.add),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),

                  ...List.generate(txtControllerList.length, (index) =>
                      ListTile(
                        title: TextField(
                          controller: txtControllerList[index],
                          decoration: InputDecoration(
                            hintText:'Enter the your choies programming lagauges',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                    color: Colors.black,
                                    width: 2
                                )

                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                    color: Colors.black,
                                    width: 2
                                )
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                    color: Colors.black,
                                    width: 3
                                )
                            ),
                          ),

                        ),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              icon: Icon(Icons.close),
                              onPressed: () {
                                TextEditingController txtController=TextEditingController();
                                setState(() {
                                  txtControllerList.removeAt(index);
                                });
                              },
                            ),
                          ],
                        ),
                      )
                  ),
                  ElevatedButton(onPressed: () {
                    // String res=txtName.text;
                    bool respones=formKey.currentState!.validate();
                    if(respones)
                    {
                      name=txtName.text;
                      surname=txtSurname.text;
                      position=txtPosition.text;
                      id_num=txtId.text;
                      phone=txtPhone.text;
                      gmail=txtGmail.text;
                      dob=txtDob.text;
                      natioin=txtNatioin.text;
                      String skills=txtController.text;

                      for(int i=1;i<txtControllerList.length;i++)
                      {
                        skills=skills+ " " +txtControllerList[i].text;
                      }
                      print(skills);
                      // ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('${skills}${txtControllerList[1].text}',style: TextStyle(
                      //     color: Colors.white,fontSize: 18
                      // ),)));
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('${skills} ${txtControllerList.length}')));
                      Navigator.of(context).pushNamed('/id');
                    }


                  }, child: Text('submit',style: TextStyle(
                      color: Color(0XFF1b5bb5)
                  ),)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
