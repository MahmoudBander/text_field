// ignore_for_file: prefer_const_constructors, camel_case_types, prefer_const_literals_to_create_immutables

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
      home: text_field(),
    );
  }
}

class text_field extends StatelessWidget {
  const text_field({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 5,horizontal: 6),
              decoration: BoxDecoration(
                  color: Colors.purple[100],
                  borderRadius: BorderRadius.circular(66)),
              width: 300,
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  hintText: "your Email:",
                  border: InputBorder.none,
                ),
              ),
            ),
            Container(

                    margin: EdgeInsets.symmetric(vertical: 20),
              padding: EdgeInsets.symmetric(vertical: 5,horizontal: 6),
              decoration: BoxDecoration(
                  color: Colors.purple[100],
                  borderRadius: BorderRadius.circular(66)),
              width: 300,
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  hintText: "Password:",
                  border: InputBorder.none,
                  suffixIcon:Icon(Icons.visibility), 
                ),
              ),
            ),
      
      
        ElevatedButton(
   onPressed: (){},
   style: ButtonStyle(
     backgroundColor: MaterialStateProperty.all(Colors.purple),
     padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 110,vertical: 20)),
     shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(55))),
  ),
   child: Text("Log in", style: TextStyle(fontSize: 25,color: Colors.white),),
),  
          ],
        ),
      ),
    );
  }
}
