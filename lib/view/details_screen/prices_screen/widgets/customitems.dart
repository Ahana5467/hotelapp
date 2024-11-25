import 'package:flutter/material.dart';

class CustomItems extends StatelessWidget {
final String item;
  const CustomItems({
    super.key, required this.item,
    
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
                    // width: double.infinity,
                    decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black),
            ),child: Text(item,style: TextStyle(fontSize: 15,fontWeight: FontWeight.w800,color: Colors.black)),
            );
  }
}