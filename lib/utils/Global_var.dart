
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:resume_app_daily_task/screens/ragistation_form/form.dart';

String name='nothing entered!!!';
String surname='nothing entered!!!';
String phone='nothing entered!!!';
String gmail='nothing entered!!!';
String dob='nothing entered!!!';
String natioin='nothing entered!!!';
String id_num='nothing entered!!!';
String position='nothing entered!!!';

String gender='male';
bool drawing=false;
bool camping=false;
TextEditingController  txtController=TextEditingController();
List txtControllerList=[
  txtController,
];
Padding box1({required TextEditingController? controller})
{
  return Padding(
    padding: const EdgeInsets.only(left: 20,right: 20),

    child: TextFormField(
      controller: txtPosition,
      validator: (value) {
        if(value!.isEmpty)
        {
          return 'field must be required!!';
        }
      },
      style: TextStyle(height: 1),

      decoration: InputDecoration(
        labelText: 'position',
        hintText: 'manager',

        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
          borderRadius: BorderRadius.circular(10),
        ),

        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
          borderRadius: BorderRadius.circular(10),
        ),

        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black, width: 1),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    ),
  );
}
Padding id({required TextEditingController? controller})
{
  return  Padding(
    padding: const EdgeInsets.only(left: 20,right: 20),

    child: TextFormField(
      controller: txtId,
      validator: (value) {
        if(value!.isEmpty)
        {
          return 'field must be required!!';
        }
        else if(value.length<=3)
        {

          return 'the enter value is more then 3';

        }
      },
      keyboardType: TextInputType.number,
      style: TextStyle(height: 1),

      decoration: InputDecoration(
        labelText: 'Id_number',
        hintText: '5732',

        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
          borderRadius: BorderRadius.circular(10),
        ),

        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
          borderRadius: BorderRadius.circular(10),
        ),

        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black, width: 1),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    ),
  );
}
Padding phone_num_1({required TextEditingController? controller})
{
  return   Padding(
    padding: const EdgeInsets.only(left: 20,right: 20),

    child: TextFormField(
      controller: txtPhone,
      validator: (value) {
        if(value!.isEmpty)
        {
          return 'field must be required!!';
        }
        else if(value.length<9)
        {
          return 'the enter value is entered  10 number';
        }

      },
      keyboardType: TextInputType.number,
      style: TextStyle(height: 1),

      decoration: InputDecoration(
        labelText: 'Phone',
        hintText: '9510953469',

        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
          borderRadius: BorderRadius.circular(10),
        ),

        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
          borderRadius: BorderRadius.circular(10),
        ),

        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black, width: 1),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    ),
  );
}
Padding gmail_box({required TextEditingController? controller})
{
  return  Padding(
    padding: const EdgeInsets.only(left: 20,right: 20),

    child: TextFormField(
      controller: txtGmail,
      validator: (value) {
        if(value!.isEmpty)
        {
          return 'field must be required!!';
        }
        else if(value.length<=8 )
        {
          return 'value should be more than 8';
        }
        else if(!value.contains('@gmail.com'))
        {
          return 'field the @gmail.com';
        }
        else if(value.toString()=='gmail.com')
        {
          return 'enter @';
        }

      },

      style: TextStyle(height: 1),

      decoration: InputDecoration(
        labelText: 'Gmail',
        hintText: 'prachis@gmail.com',

        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
          borderRadius: BorderRadius.circular(10),
        ),

        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
          borderRadius: BorderRadius.circular(10),
        ),

        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black, width: 1),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    ),
  );
}
Padding dob_box({required TextEditingController? controller})
{
  return   Padding(
    padding: const EdgeInsets.only(left: 20,right: 20),

    child: TextFormField(
      controller: txtDob,
      validator: (value) {
        if(value!.isEmpty)
        {
          return 'field must be required!!';
        }
      },

      style: TextStyle(height: 1),
      keyboardType: TextInputType.number,

      decoration: InputDecoration(
        labelText: 'DD/MM/YY',
        hintText: '16/07/2006',

        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
          borderRadius: BorderRadius.circular(10),
        ),

        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
          borderRadius: BorderRadius.circular(10),
        ),

        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black, width: 1),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    ),
  );
}
Padding Natioin_box({required TextEditingController? controller})
{
  return Padding(
    padding: const EdgeInsets.only(left: 20,right: 20),

    child: TextFormField(
      controller: txtNatioin,
      validator: (value) {
        if(value!.isEmpty)
        {
          return 'field must be required!!';
        }
      },

      style: TextStyle(height: 1),

      decoration: InputDecoration(
        labelText: 'Natioinallty',
        hintText: 'indian',

        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
          borderRadius: BorderRadius.circular(10),
        ),

        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
          borderRadius: BorderRadius.circular(10),
        ),

        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black, width: 1),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    ),
  );
}
