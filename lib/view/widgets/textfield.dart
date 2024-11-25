import 'package:flutter/material.dart';


// ignore: must_be_immutable
class Textfield extends StatelessWidget {
  String textfield;
  String image;
   Textfield({super.key,required this.textfield,required this.image});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.black,)
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: [
                      Image.asset(image),
                      SizedBox(width: 100,),
                      Text(textfield,style: TextStyle(color: Colors.black),),
                    ],
                  ),
                ),
              ),
    );
  }
}