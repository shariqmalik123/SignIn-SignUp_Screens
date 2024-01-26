

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:login_signup_page/login_page.dart';

import 'signup_page.dart';

void main() {
  runApp(
    const MaterialApp(
      home: MyScreen(),
    ),
  );
}

class MyScreen extends StatelessWidget {
  const MyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        
        child: Container(
          //NOTE:
          // i am giving a MediaQuery height
          //double.infinity will make it big as my parent allows
          //while MediaQuery will make it big as per the screeen
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
          child: Column(
            //NOTE:
            // even the space distribution
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column (
                children: <Widget>[
                  const Text(
                    "GREETINGS!",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                      color: Color.fromARGB(255, 0, 8, 255),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Step into our application. A real where innovation seamlessly intertwines with simplicity.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 17,
                    ),
                  ),
                ],
              ),
              Container(
                height: MediaQuery.of(context).size.height / 2,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/welcome.png"))),
              ),
              Column(
                children: <Widget>[
                  //the login button
                  MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginPage()));
                    },
                    //NOTE:
                    //Now we are gonna define the shape of buttons
                    shape: RoundedRectangleBorder(
                        // ignore: duplicate_ignore
                        // ignore: prefer_const_constructors
                        side: BorderSide(
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.circular(15)),

                    child: const Text(
                      "Login",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                    ),
                  ),

                  //the signup/register button
                  SizedBox(height: 20),
                  MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignUpPage()));
                    },
                    color: Color.fromARGB(255, 0, 8, 255),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)
                       ),
                       child: Text(
                        "Register",
                        style: TextStyle(
                         color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                        ),
                        ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
