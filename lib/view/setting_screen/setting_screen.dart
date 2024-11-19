import 'package:flutter/material.dart';
import 'package:hotelapp1/view/utils/constantcolor.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Constantcolor.WHITE,
        title: Text("Your favourities",style: TextStyle(color: Constantcolor.BLACK,fontSize: 20,fontWeight: FontWeight.bold),),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Edit profile",style: TextStyle(color: Constantcolor.BLACK,fontSize:15,fontWeight: FontWeight.w700 ),),
              Text("Ahana s nair",style: TextStyle(color: Constantcolor.BLACK,fontSize:10),),
              SizedBox(height: 10),
              Text("Log out",style: TextStyle(color: Constantcolor.BLACK,fontSize:15,fontWeight: FontWeight.w700 ),),
              SizedBox(height: 15),
              Divider(),
              SizedBox(height: 15),
              Text("Manage price alerts",style: TextStyle(color: Constantcolor.BLACK,fontSize: 20,fontWeight: FontWeight.bold),),
              SizedBox(height: 15),
              Text("Manage price alerts",style: TextStyle(color: Constantcolor.BLACK,fontSize:15,fontWeight: FontWeight.w700 ),),
              SizedBox(height: 15),
              Divider(),
              SizedBox(height: 15),
              Text("Preferences",style: TextStyle(color: Constantcolor.BLACK,fontSize: 20,fontWeight: FontWeight.bold),),
              SizedBox(height: 15),
              Text("Language",style: TextStyle(color: Constantcolor.BLACK,fontSize:15,fontWeight: FontWeight.w700 ),),
              Text("English, India",style: TextStyle(color: Constantcolor.BLACK,fontSize:10),),
              SizedBox(height: 10),
              Text("Currency",style: TextStyle(color: Constantcolor.BLACK,fontSize:15,fontWeight: FontWeight.w700 ),),
              Text("INR -",style: TextStyle(color: Constantcolor.BLACK,fontSize:10),),
              SizedBox(height: 10),
              Text("Distance unit",style: TextStyle(color: Constantcolor.BLACK,fontSize:15,fontWeight: FontWeight.w700 ),),
              Text("km",style: TextStyle(color: Constantcolor.BLACK,fontSize:10),),
              SizedBox(height: 15),
              Text("Manage data privacy settings",style: TextStyle(color: Constantcolor.BLACK,fontSize:15,fontWeight: FontWeight.w700 ),),
              SizedBox(height:10),
              Divider(),
              SizedBox(height:10),
              Text("About",style: TextStyle(color: Constantcolor.BLACK,fontSize: 20,fontWeight: FontWeight.bold),),
              SizedBox(height: 20),
              Text("Legal information",style: TextStyle(color: Constantcolor.BLACK,fontSize:15,fontWeight: FontWeight.w700 ),),
              SizedBox(height: 20),
              Text("Privacy policy",style: TextStyle(color: Constantcolor.BLACK,fontSize:15,fontWeight: FontWeight.w700 ),),
              SizedBox(height: 20),
              Text("How trivago works",style: TextStyle(color: Constantcolor.BLACK,fontSize:15,fontWeight: FontWeight.w700 ),),
              SizedBox(height: 20),
              Text("Help centre",style: TextStyle(color: Constantcolor.BLACK,fontSize:15,fontWeight: FontWeight.w700 ),),
              SizedBox(height: 20),
              Text("Third-party licences",style: TextStyle(color: Constantcolor.BLACK,fontSize:15,fontWeight: FontWeight.w700 ),),
              SizedBox(height: 20),
              Text("App Version 6.23.0",style: TextStyle(color: Colors.grey,fontSize:15,fontWeight: FontWeight.w700 ),),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}