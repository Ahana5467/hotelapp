import 'package:flutter/material.dart';

class BottontextScreen extends StatelessWidget {
 final String bottonText;
 final void Function()? onButtonPressed;
  const BottontextScreen({super.key,required this.bottonText,this.onButtonPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onButtonPressed,
      child: Container(
       height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(4),
      color: Colors.blue.shade800
      ),
      child: Center(child: Text(bottonText,style:TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w600),))
          ),
    );
  }
}