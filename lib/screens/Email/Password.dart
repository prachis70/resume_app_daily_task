import 'package:flutter/material.dart';
class passwordPage extends StatefulWidget {
  const passwordPage({super.key});

  @override
  State<passwordPage> createState() => _passwordPageState();
}

GlobalKey<FormState> fromkey = GlobalKey();
TextEditingController txtPassword = TextEditingController();

class _passwordPageState extends State<passwordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: fromkey,
        child: Column(
          children: [
            Column(
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 150),
                    child: Container(
                      height: 300,
                      width: 600,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            spreadRadius: 2,
                            blurRadius: 2,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 10, right: 85),
                                child: Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/imgs/logo4.png'))),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 2, right: 30),
                                child: Text(
                                  'Sign in',
                                  style: TextStyle(
                                      fontSize: 26,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 2, left: 35),
                                child: Text(
                                  'Use Your Google Account',
                                  style: TextStyle(fontSize: 12),
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 75, left: 30),
                                child: Container(
                                  height: 200,
                                  width: 380,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Column(
                                    children: [
                                      TextFormField(
                                        onChanged: (value) {
                                          setState(() {
                                            password = value;
                                          });
                                        },
                                        validator: (value) {
                                          if (value!.isEmpty) {
                                            return 'field must be requried!';
                                          } else if (value.length <= 8) {
                                            return 'value should be more than 8';
                                          }
                                        },
                                        controller: txtPassword,
                                        keyboardType:
                                            TextInputType.emailAddress,
                                        style: TextStyle(height: 1),
                                        decoration: InputDecoration(
                                            labelText: 'password',
                                            hintText: 'prachi@s',
                                            border: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.black),
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.black),
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.black,
                                                  width: 2),
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            )),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 2, left: 250),
                                        child: Text(
                                          'Forget Password?',
                                          style: TextStyle(
                                              color: Colors.blue.shade900),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 2),
                                        child: Text.rich(TextSpan(children: [
                                          TextSpan(
                                              text:
                                                  'Not your computer?Use Guest mode to sign up privately.',
                                              style: TextStyle(fontSize: 12)),
                                          TextSpan(
                                              text: 'Learn more',
                                              style: TextStyle(
                                                  color: Colors.blue.shade900,
                                                  fontSize: 12))
                                        ])),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Container(
                                            height: 50,
                                            width: 100,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                color: Colors.white),
                                            child: Center(
                                                child: Text(
                                              'create acoount',
                                              style: TextStyle(
                                                  color: Colors.blue.shade900),
                                            )),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 20, top: 2),
                                            child: GestureDetector(
                                              onTap: () {
                                                bool responce = fromkey
                                                    .currentState!
                                                    .validate();
                                                if (responce) {
                                                  password = txtPassword.text;
                                                }
                                                Navigator.of(context)
                                                    .pushNamed('/succses');
                                              },
                                              child: Container(
                                                height: 50,
                                                width: 100,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30),
                                                    color:
                                                        Colors.blue.shade900),
                                                child: Center(
                                                    child: Text(
                                                  'Submit',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 18),
                                                )),
                                              ),
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

String password = '';
