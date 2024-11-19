import 'package:flutter/material.dart';

class Customcheckbox extends StatefulWidget {
  final String text;
  const Customcheckbox({super.key, required this.text});

  @override
  State<Customcheckbox> createState() => _CustomcheckboxState();
}

class _CustomcheckboxState extends State<Customcheckbox> {
  bool ischanged = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(widget.text,style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
        Spacer(),
        Checkbox(value:ischanged , onChanged: (value) {
          setState(() {});
          ischanged = value!;
        },)
      ],
    );
  }
}