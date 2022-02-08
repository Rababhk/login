import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:login/screens/login_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final myController = TextEditingController();
  final myController2 = TextEditingController();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      debugShowCheckedModeBanner: false,

      title: 'Login',

      theme: ThemeData(

        visualDensity: VisualDensity.adaptivePlatformDensity

      ),

      home: Container(

        child: Scaffold(

          backgroundColor: Color.fromARGB(255, 192, 136, 202),

          body: ListView(

            children: [

              SizedBox(height: 50),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
              ),

              SizedBox(height: 20),

              Padding(

                padding: EdgeInsets.all(30),

                child: Container(

                  decoration: BoxDecoration(

                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [BoxShadow
                      (
                        color: Colors.grey,
                        blurRadius: 10,
                        offset: Offset(0,5)

                      )
                    ],
                    
                    ), 

                    child: Column(

                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [

                        Container(

                          padding: EdgeInsets.fromLTRB(30,70,30,30),

                          child: Text('Lonion', style: TextStyle(

                            fontWeight: FontWeight.bold,
                            fontSize: 35,
                            color: Color.fromARGB(255, 202, 84, 231)

                          ),
                          ),

                        ),

                        

                        SizedBox(height: 30),
                        Padding(

                          padding: EdgeInsets.symmetric(vertical:0, horizontal: 30),

                          child: TextField(

                            controller: myController,

                            autofocus: false,

                            decoration: InputDecoration(

                              hintText: 'Usuario',
                              prefixIcon: Icon(Icons.person),
                              contentPadding: EdgeInsets.all(10),
                              hintStyle: TextStyle(

                                color: Colors.grey,
                                fontSize: 18

                              ),

                              enabledBorder: UnderlineInputBorder(

                                borderSide: BorderSide(

                                  color: Colors.grey,
                                  width: 2

                                )

                              ),

                            ),

                          ),

                        ),

                        SizedBox(height: 40),
                        Padding(

                          padding: EdgeInsets.symmetric(vertical:0, horizontal: 30),

                          child: TextField(

                            controller: myController2,

                            autofocus: false,

                            obscureText: true,

                            decoration: InputDecoration(

                              hintText: 'Cotraseña',
                              prefixIcon: Icon(Icons.lock),
                              contentPadding: EdgeInsets.all(10),
                              hintStyle: TextStyle(

                                color: Colors.grey,
                                fontSize: 18

                              ),

                              enabledBorder: UnderlineInputBorder(

                                borderSide: BorderSide(

                                  color: Colors.grey,
                                  width: 2

                                )

                              ),

                            ),

                          ),

                        ),

                        SizedBox(height: 60),

                        InkWell(

                          onTap: () {
                            
                            Navigator.push(context, MaterialPageRoute(builder: (context){

                              return LoginScreen(myController.text, myController2.text);

                            }));


                            print('enga funsiona');

                          },
                
                          child: Container(

                            child: Row(

                              mainAxisAlignment: MainAxisAlignment.center,
                              
                              children: [

                                Padding(

                                  padding: EdgeInsets.all(20),
                                  child: Text('Acceder', style: TextStyle(

                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white, 

                                  ),
                                  ),

                                ),

                              ],

                            ),

                            decoration: BoxDecoration(

                              color: Color.fromARGB(255, 202, 84, 231),

                              borderRadius: BorderRadius.only(

                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20)

                              ),

                            ),

                          ),

                        ),

                      ],

                    ),

                  ),

                ),

            ]

          ),

        ),

      ),
    );
  }
}
