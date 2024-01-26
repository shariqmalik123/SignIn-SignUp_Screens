// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 20,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
         
         // ignore: sized_box_for_whitespace
         child: Container(
          height: MediaQuery.of(context).size.height -200,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(padding:EdgeInsets.symmetric(horizontal: 20),
                 
                 child: Column(  
                  children: <Widget>[ Text(
                    "REGISTER NOW       ",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 0, 8, 255),
                    ),
                  ),
                  
                 Text("Resgister your account to start using our app.",
                      style: TextStyle(
                          fontSize: 17,
                         color: Color.fromARGB(255, 97, 97, 97))),
                  ],
                  ),
                  ),
                ],
              ),
          
           
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Username",
                      style: TextStyle(
                        fontSize: 17,
                      ),),
                      SizedBox(height: 10,),
                      TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.person_4_outlined, 
                          color: Color.fromARGB(255, 0, 8, 255),),
                          hintText: "Your Name",
                          contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                          enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: Color.fromARGB(255, 0, 8, 255),),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(
              color: Color.fromARGB(255, 189, 189, 189),
            ),
          ),
        ),
      ),
      SizedBox(height: 10,),
      
      Text("Email",
                      style: TextStyle(
                        fontSize: 17,
                      ),),
                      SizedBox(height: 10,),
                      TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.alternate_email, 
                          color: Color.fromARGB(255, 0, 8, 255),),
                          hintText: "Ex: abc@example.com",
                          contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                          enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: Color.fromARGB(255, 0, 8, 255),),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(
              color: Color.fromARGB(255, 189, 189, 189),
            ),
          ),
        ),
      ),
      SizedBox(height: 10,),
                     
                     
                     Text("Password",
                      style: TextStyle(
                        fontSize: 17,
                      ),),
                      SizedBox(height: 10,),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock_outline_rounded,
                          color: Color.fromARGB(255, 0, 8, 255),),
                          hintText: "********",
                          contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                          enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: Color.fromARGB(255, 0, 8, 255),),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(
              color: Color.fromARGB(255, 189, 189, 189),
            ),
          ),
        ),
      ),
      SizedBox(height: 10,),
                     
                    ],
                  ),
                ),
                SizedBox(height: 10,),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    padding: EdgeInsets.only(top: 3.0, left: 3.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border(
                        bottom: BorderSide(color: Colors.black),
                        top: BorderSide(color: Colors.black),
                        left: BorderSide(color: Colors.black),
                        right: BorderSide(color: Colors.black),
                      ),
                    ),
                    child: MaterialButton(
                      minWidth: double.infinity,
                      height: 60,
                      onPressed: () {},
                      color: Color.fromARGB(255, 0, 8, 255),
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Text(
                        "Register",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Already have an account? "),

                    InkWell(
                      child: Text(
                        "Login",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Color.fromARGB(255, 0, 8, 255),
                        ),
                      ),
                    ),
                  
                ],
             
              ),
            ]
          )
          ),
        ),
      );
  }
}

