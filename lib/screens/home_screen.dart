import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:localproject/screens/Login/login_screen.dart';
import 'package:localproject/widget/rounded_button.dart';
import 'package:get/get.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
  body: Container(
    width: double.maxFinite,
    height: double.maxFinite,
    padding: const EdgeInsets.only(left: 20, right: 20),
    decoration: const BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.cover, image: AssetImage("assets/bg.jpg"))),
    child: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children:[
          SizedBox(height: size.height * 0.3),
          const Text(
            "WELCOME TO MY FLUTTER APP",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.black,
                decoration: TextDecoration.none
            ),
          ),
          SizedBox(height: size.height * 0.4),
          RoundedButton(
            text: "LOGIN",
            color: Colors.black,
            textColor: Colors.white,
            press: () {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                content: Text("Sending Message"),
              ));
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return LoginScreen();
                },)
                ,
              );
            },
          ),
          RoundedButton(
            text: "SIGNUP",
            color: Colors.greenAccent,
            textColor: Colors.black,
            press: () {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                content: Text("Sending Message"),
              ));
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return LoginScreen();
                },)
                ,
              );
            },
          ),

        ]

        ,

      )

      ,

    )

    ,

  ),
    );
  }
}
