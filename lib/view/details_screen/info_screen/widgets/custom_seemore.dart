import 'package:flutter/material.dart';

class CustomSeemore extends StatelessWidget {
  final void Function()? onButtonPressed;
  const CustomSeemore({super.key, this.onButtonPressed});

  @override
  Widget build(BuildContext context) {
    return  Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            InkWell(
              onTap: onButtonPressed,
              child: Text("SEE MORE",style: TextStyle(color: Colors.blue,fontSize: 14,fontWeight: FontWeight.bold),),
       )],);
  }
}