
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class bar extends StatefulWidget {
  const bar({super.key});

  @override
  State<bar> createState() => _barState();
}

class _barState extends State<bar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 30,left: 10,right: 10),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(
                  height: 5
              ),
              TextField(
                decoration: InputDecoration(
                  // icon: Icon(Icons.search),
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(height: 5,),
              Wrap(
                direction: Axis.horizontal,
                children: [...List.generate(pr.length, (index) => box1(img: pr[index]['img']))],)],
          ),
        ),
      ),
    );
  }
  Padding box1({required String img}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          height: 180,
          width: 150,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey,
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                      img
                  )
              )
          ),
          child:GestureDetector(onTap: () {
            if(favorite!=Icons.favorite)
            {
              setState(() {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('This Picture add to your gallry',style: TextStyle(fontSize: 18),),backgroundColor: Colors.blue.shade900,));
              });
            }
            else
            {
              Icon(Icons.favorite_border);
            }
          },child: Padding(
            padding: const EdgeInsets.only(left: 100,bottom: 100),
            child: Icon(Icons.favorite,color: Colors.white,size:32,),
          ))),

      // ElevatedButton(onPressed: () {
      //   ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('You write in page'),backgroundColor: Colors.pink,));
      // }, child:Icon(Icons.favorite,color: Colors.white,size: 5,)),

    );
  }
}
List pr=[
{
'img':'assets/imgs/p1.jpeg',
},
{
  'img':'assets/imgs/p2.jpeg',
},
  {
    'img':'assets/imgs/p3.jpeg',
  },
  {
    'img':'assets/imgs/p4.jpeg',
  },
  {
    'img':'assets/imgs/p5.jpeg',
  },
  {
    'img':'assets/imgs/p6.jpeg',
  },
];
List favorite=[];
