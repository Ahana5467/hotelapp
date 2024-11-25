import 'package:flutter/material.dart';
import 'package:hotelapp1/view/utils/constantcolor.dart';

class Custombottombar extends StatelessWidget {
  const Custombottombar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
          children: [
            Column(
              children: [
                Text("₹12,600",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w800,color:Colors.green.shade300),),
                Text("per night on Holiday Inn",style: TextStyle(fontSize: 10,color: Constantcolor.BLACK),),
              ]
            ),
            Spacer(),
            Text("View Deal",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w800,color:Constantcolor.BLACK),),
            SizedBox(width: 5),
            Icon(Icons.arrow_forward_ios,color: Constantcolor.BLACK,size: 16,)
          ],
        );
  }
}