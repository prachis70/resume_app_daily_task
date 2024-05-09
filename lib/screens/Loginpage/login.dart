
import 'package:flutter/material.dart';
class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}
TextEditingController txtEmail = TextEditingController();
TextEditingController txtPassword = TextEditingController();

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
          children:[
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('asset/image/Background2.png'),
                      fit: BoxFit.cover,
                    )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 200,
                  ),
                  Text('Welcome Back,                     ',style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 30,
                  ),),
                  Text('Make it work, make it right,make it fast.                       ',style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  ),),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    controller: txtEmail,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(
                          color: Colors.grey,
                          width: 2,
                        ),
                      ),
                      focusedBorder:  OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(
                          color: Colors.grey,
                          width: 2.5,
                        ),
                      ),
                      labelText: 'Email',
                      hintText: '  example@gmail.com',
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  TextField(
                    controller: txtPassword,
                    obscureText: true,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.fingerprint_outlined),
                      suffixIcon: Icon(Icons.remove_red_eye_outlined),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(
                          color: Colors.grey,
                          width: 2,
                        ),
                      ),
                      focusedBorder:  OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(
                          color: Colors.grey,
                          width: 3,
                        ),
                      ),
                      labelText: 'Password',
                      hintText: '  12345@333',
                    ),
                  ),
                  SizedBox(height: 2,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(onPressed: (){}, child: Text('Forget Password?',style: TextStyle(color: Colors.blue),))
                    ],
                  ),
                  Container(
                    height: 60,
                    width: 400,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    alignment: Alignment.center,
                    child: Text('LOGIN',style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('OR',style: TextStyle(
                        color: Colors.grey.shade700,
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                      ),)
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Container(
                    height: 60,
                    width: 400,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    alignment: Alignment.center,
                    child: Text('Sign-in with Google',style: TextStyle(
                      fontSize:18,
                      color: Colors.black,
                    ),),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Do not have an Account?',style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                      ),),
                      Text(' Signup',style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                      ),),
                    ],
                  ),
                ],
              ),
            )

          ]
      ),
    );
  }
}
