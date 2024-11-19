import 'package:flutter/material.dart';
import 'package:hotelapp1/view/widgets/bottontext_screen.dart';

class ForgotScreen extends StatelessWidget {
  const ForgotScreen({super.key});

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
                  Text("Back"),
                ],
              ),
              SizedBox(height: 10,),
              Text("Forgot your password?",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
              Text("No problem!",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
              SizedBox(height: 20,),
              Text("Enter your email address and we will send you a link for the password reset",style: TextStyle(fontSize: 10),),
              SizedBox(height: 10,),
              Text("Your email address",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "abcd@gmail.com"
              ),
            ),
            SizedBox(height: 20,),
            BottontextScreen(bottonText: "Send reset link"),
          ],
        ),
      ),
    );
  }
}