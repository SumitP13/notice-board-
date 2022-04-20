// import 'package:firstpage/signup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:noticeboardapp/signup.dart';

import 'loginpage.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    // Text("Welcome,",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30.0),),
                    // SizedBox(height: 15.0,),
                    // Text("",textAlign:TextAlign.center,style: TextStyle(color: Colors.grey[700],fontSize: 15.0),),

                    SizedBox(
                      width: 250.0,
                      child: DefaultTextStyle(
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 30.0,
                          fontFamily: 'popin',
                        ),
                        child: AnimatedTextKit(
                            isRepeatingAnimation: true,
                            repeatForever: true,
                            animatedTexts: [
                              TyperAnimatedText('Welcome,',
                                  speed: Duration(milliseconds: 355)),
                            ]),
                      ),
                    ),
                    SizedBox(
                      width: 250.0,
                      child: DefaultTextStyle(
                        style: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 20.0,
                          fontFamily: 'popin',
                        ),
                        child: AnimatedTextKit(
                            isRepeatingAnimation: true,
                            repeatForever: true,
                            animatedTexts: [
                              TyperAnimatedText('To Digital Notice Board App',
                                  speed: Duration(milliseconds: 140)),
                            ]),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: MediaQuery.of(context).size.height/2,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage("images/login4.png"))),
                ),
                Column(
                  children: [
                    //Login button
                    MaterialButton(
                      minWidth: double.infinity,
                      height: 60,
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => loginpage()));
                      },
                      shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(50)),
                      child: Text(
                        "Login",
                        style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    MaterialButton(
                      color: Color(0xff0095ff),
                      minWidth: double.infinity, //0xff0095ff
                      height: 60,
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => signup()));
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: Colors.white),
                      ),
                    ),
                    //Sign up button
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
