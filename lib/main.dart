import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login/screens/home_screen.dart';
import 'package:login/screens/login_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: 'home',
      routes: {
      'home'   : ( BuildContext context ) =>  HomeScreen(),
      //'login'   : ( BuildContext context ) =>  LoginScreen(),
      },
    );
  }
}