import 'dart:ui';

import 'package:flutter/material.dart';
 
class LoginScreen extends StatelessWidget {

  var text;
  var pw;
  LoginScreen(this.text, this.pw);

  
  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      debugShowCheckedModeBanner: false,

      home: Scaffold(

        backgroundColor: Color.fromARGB(255, 192, 136, 202),

        body: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [

            Text('Querido $text', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white) ),

            Divider(color: Color.fromARGB(255, 192, 136, 202),),

            Text('Me acabas de dar tu contraseña: $pw', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white), ),

          ], 
          

        ),
      ),
    );
  }
}