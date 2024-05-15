import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class Successful extends StatefulWidget {
  const Successful({super.key});

  @override
  State<Successful> createState() => _SuccessfulState();
}

class _SuccessfulState extends State<Successful> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(
         children: [
           Center(
             child: Padding(
               padding: const EdgeInsets.only(top: 300),
               child: Container(
                 height: 300,
                 width: 300,
                 decoration:  BoxDecoration(
                   borderRadius:BorderRadius.circular(20),
                   boxShadow: [
                      BoxShadow( spreadRadius: 2, blurRadius: 2,color: Colors.green)
                   ],
                   image:  DecorationImage(
                     image: AssetImage('assets/imgs/logo6.jpg'),
                   ),
                 ),
               ),
             ),
           )
         ],
      ),
    );
  }
}
