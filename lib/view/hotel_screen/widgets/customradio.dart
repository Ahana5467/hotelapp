import 'package:flutter/material.dart';

class Customradio extends StatefulWidget {
 final String text;
  const Customradio({super.key, required this.text});

  @override
  State<Customradio> createState() => _CustomradioState();
}

class _CustomradioState extends State<Customradio> {
  String? selectedOption;
  

  @override
  Widget build(BuildContext context) {
    return Row( 
      children: [
      Radio(value: 'Option 1' , groupValue: selectedOption, onChanged: (value) {
          selectedOption = value;
          setState(() {});
        },),
         Text(widget.text,style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
      ]
    );
  }
}
