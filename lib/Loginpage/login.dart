import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 600,
            width: 500,
            decoration: BoxDecoration(
              color: Colors.white
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(top:100),
                child: Container(
                  height: 280,

                  width: 400,

                  decoration: BoxDecoration(
                      color: Colors.pink,
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        'assets/imgs/logo.jpeg'
                      )
                    )
                  ),
                ),
              ),
            ),

          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              height: 200,
              width: 600,
              decoration: BoxDecoration(
                color: Colors.white,
                

              ),
              child: Column(
                children: [
                  Text('Build Awesome Apps',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black),),
                  Text('lets put your creativity on the \n development highway',style:   TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black)),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 50,
                          width:140,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black,width: 2),
                           borderRadius: BorderRadius.circular(10),
                           // color: Colors.amber,
                          ),
                          alignment: Alignment.center,
                          child: Text('LOGIN',style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                        Container(
                          height: 50,
                          width:140,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black,width: 2),
                            borderRadius: BorderRadius.circular(10),
                             color: Colors.black87,
                          ),
                          alignment: Alignment.center,
                          child: Text('SIGNUP',style: TextStyle(color: Colors.white)),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
