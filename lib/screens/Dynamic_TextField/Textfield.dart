import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Dynamictxtfield extends StatefulWidget {
  const Dynamictxtfield({super.key});

  @override
  State<Dynamictxtfield> createState() => _DynamictxtfieldState();
}

class _DynamictxtfieldState extends State<Dynamictxtfield> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Dynamic_textfield',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                ),
              ],
            ),
            ...List.generate(
                txtControllerList.length,
                (index) => ListTile(
                      title: TextField(
                        controller: txtControllerList[index],
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                BorderSide(color: Colors.black, width: 2),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                BorderSide(color: Colors.black, width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                BorderSide(color: Colors.black, width: 3),
                          ),
                        ),
                      ),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            icon: Icon(Icons.close),
                            onPressed: () {
                              TextEditingController txtController =
                                  TextEditingController();
                              setState(() {
                                txtControllerList.removeAt(index);
                              });
                            },
                          ),
                        ],
                      ),
                    )),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 50,
              width: 170,
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        spreadRadius: 2,
                        blurRadius: 2,
                        offset: Offset(0, 2),
                        color: Colors.grey)
                  ],
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                  child: Text(
                'Add TextFiled',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              )),
            ),
          ),
          FloatingActionButton(
            onPressed: () {
              TextEditingController txtController = TextEditingController();
              setState(() {
                txtControllerList.add(txtController);
              });
            },
            child: Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: () {
              String skills = txtController.text;

              for (int i = 1; i < txtControllerList.length; i++) {
                skills = skills + " " + txtControllerList[i].text;
              }
              print(skills);
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text(
                '${skills}${txtControllerList[1].text}',
                style: TextStyle(color: Colors.white, fontSize: 18),
              )));
            },
            child: Icon(Icons.navigate_next_sharp),
          ),
        ],
      ),
    );
  }
}

TextEditingController txtController = TextEditingController();
List txtControllerList = [
  txtController,
];
