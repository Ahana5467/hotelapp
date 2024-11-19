import 'package:flutter/material.dart';
import 'package:hotelapp1/view/forgot_screen/forgot_screen.dart';
import 'package:hotelapp1/view/home_screen/home_screen.dart';
import 'package:hotelapp1/view/widgets/bottontext_screen.dart';

class PasswordScreen extends StatelessWidget {
  const PasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text("tri",style: TextStyle(color: Colors.red,fontSize: 30,fontWeight: FontWeight.bold),),
                  Text("va",style: TextStyle(color: Colors.orange,fontSize: 30,fontWeight: FontWeight.bold),),
                  Text("go",style: TextStyle(color: Colors.blue,fontSize: 30,fontWeight: FontWeight.bold),),
                ],
              ),
              SizedBox(height: 30,),
              Row(
                children: [
                  Icon(Icons.arrow_back_ios),
                  SizedBox(width: 5,),
                  Text("abcd@gmail.com"),
                ],
              ),
              SizedBox(height: 10,),
              Text("Enter your password ",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
              SizedBox(height: 20,),
              Row(
                children: [
                  Expanded(child: Text("Password",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
                  Icon(Icons.remove_red_eye),
                ],
              ),
              TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20,),
            BottontextScreen(bottonText: "Log in",onButtonPressed: () {
               Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen(),));
             },
            ),
            SizedBox(height: 20,),
            InkWell(
            onTap: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ForgotScreen()));
            },
              child: Text("Forgot your password?",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold,color: Colors.blue.shade300),))
          ],
        ),
      ),
    );
  }
}