import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hotelapp1/view/home_screen/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen(),));
    },);
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("tri",style: TextStyle(fontSize: 45,color:Colors.red,fontWeight: FontWeight.bold),),
            Text("va",style: TextStyle(fontSize: 45,fontWeight: FontWeight.bold,color: Colors.orange),),
            Text("go",style: TextStyle(fontSize: 45,fontWeight: FontWeight.bold,color: Colors.blue),),
          ],
        ),
      ),
    );
  }
}