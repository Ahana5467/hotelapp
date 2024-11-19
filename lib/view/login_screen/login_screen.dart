import 'package:flutter/material.dart';
import 'package:hotelapp1/view/password_screen/password_screen.dart';
import 'package:hotelapp1/view/utils/imageconstant.dart';
import 'package:hotelapp1/view/widgets/bottontext_screen.dart';
import 'package:hotelapp1/view/widgets/textfield.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
            SizedBox(height: 20,),
            Text("Log in or create an account ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            SizedBox(height: 20,),
            Text("Your email address "),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter your email"
              ),
            ),
            SizedBox(height: 20,),
            BottontextScreen(bottonText: "Next",onButtonPressed: () {
               Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => PasswordScreen(),));
              },
              ),
            SizedBox(height: 20,),
            Row(
              children: [
                Expanded(child: Divider()),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Text("OR",style: TextStyle(color: Colors.grey),),
                ),
                Expanded(child: Divider()),
              ],
            ),
            SizedBox(height: 20,),
            Textfield(textfield: "Continue with Google", image: Imageconstant.GOOGLE),
            SizedBox(height: 10,),
            Textfield(textfield: "Continue with Apple", image: Imageconstant.APPLE),
            SizedBox(height: 10,),
            Textfield(textfield: "Continue with Facebook", image: Imageconstant.FACEBOOK),
            SizedBox(height: 20,),
            Row(
              children: [
                Text("By creating an account, you agree to our"),
                Text(" Privacy policy",style: TextStyle(color: Colors.blue.shade200),),
                Text(" and"),
                Text(" Terms of use",style: TextStyle(color: Colors.blue.shade200),),
              ],
            )
          ],
        ),
      ),
    );
  }
}