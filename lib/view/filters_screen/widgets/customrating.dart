import 'package:flutter/material.dart';

class customrating extends StatelessWidget {
 final String text;
 final Color color;
  const customrating({
    super.key, required this.text, required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: color),
    child: Text(text,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),);
  }
}