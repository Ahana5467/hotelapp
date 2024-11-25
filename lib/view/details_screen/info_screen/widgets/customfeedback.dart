import 'package:flutter/material.dart';
import 'package:hotelapp1/view/utils/constantcolor.dart';

class Customfeedback extends StatelessWidget {
 final String title;
 final String des;
 final String name;
 final String date;

  const Customfeedback({super.key, required this.title, required this.des, required this.name, required this.date});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,style: TextStyle(color: Constantcolor.BLACK,fontSize: 16,fontWeight: FontWeight.bold),),
              SizedBox(height:10),
              Text(des,style: TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.bold),),
              SizedBox(height:10),
              Text(name,style: TextStyle(color: Constantcolor.BLACK,fontSize: 12,fontWeight: FontWeight.w200),),
              Text(date,style: TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.w200),),
              SizedBox(height:10),
              Text("Expedia",style: TextStyle(color: Constantcolor.BLACK,fontSize: 12,fontWeight: FontWeight.w200),),
              SizedBox(height: 20)
      ],
    );
  }
}
