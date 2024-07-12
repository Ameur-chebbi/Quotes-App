// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true),
      home: APP1(),
    );
  }
}

class APP1 extends StatefulWidget {
  const APP1({super.key});

  @override
  State<APP1> createState() => _APP1State();
}

class _APP1State extends State<APP1> {

  List Quotes =[
    {
      "q" : "You only live once, but if you do it right, once is enough." ,
      "e":"- Mae West",
    },
     {
      "q" : "If you tell the truth, you don't have to remember anything." ,
      "e":"- Mark Twain",
    },
    {
      "q" : "Be who you are and say what you feel, because those who mind don't matter, and those who matter don't mind." ,
      "e":"- Bernard M. Baruchn",
    },
    {
      "q" : "A friend is someone who knows all about you and still loves you." ,
      "e":"- Elbert Hubbard",
    },
    {
      "q" : "Live as if you were to die tomorrow. Learn as if you were to live forever" ,
      "e":"- Mahatma Gandhi",
    },
    {
      "q" : " Two things are infinite: the universe and human stupidity; and I'm not sure about the universe." ,
      "e":"- Albert Einstein",
    },
    

  ] ;

    int index=0 ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(50.0),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue,
            Color.fromARGB(19, 79, 12, 188),
             
            ])
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              Quotes[index]["q"],
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              Quotes[index]["e"],
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                    if(index==0) {
                      index=Quotes.length-1 ;;
                    }
                    else {
                       index--;

                    }
                    });
                  },
                  backgroundColor: Color.fromARGB(177, 121, 102, 216),
                  child: Icon(
                    Icons.arrow_left,
                    color: Colors.white,
                    size: 40,
                  ),
                ),
                SizedBox(
                  width: 40,
                ),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                       if(index==Quotes.length-1) {
                      index=0 ;
                    }
                    else {
                       index++;

                    }
                    });
                  },
                  backgroundColor:  Color.fromARGB(177, 121, 102, 216),
                  child: Icon(
                    Icons.arrow_right,
                    color: Colors.white,
                    size: 40,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
