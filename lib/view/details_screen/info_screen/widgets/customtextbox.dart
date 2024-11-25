import 'package:flutter/material.dart';


class Custom_text_box extends StatelessWidget {
  final IconData icon;
  final IconData icons;
  final String text;
  final String texts;
  final Color color;
  final Color colors;
  final double size;
  final double sizes;
  const Custom_text_box({
    super.key, required this.icon, required this.text, required this.color, required this.icons, required this.texts, required this.colors, required this.size, required this.sizes, 
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
          Icon(icon,color: Colors.black,size: 15),
          SizedBox(width: size),
          Text(text,style: TextStyle(color: color,fontSize: 12,fontWeight: FontWeight.w200),),
          SizedBox(width: sizes),
          Icon(icons,color: Colors.black,size: 15),
          SizedBox(width: size),
          Text(texts,style: TextStyle(color: colors,fontSize: 12,fontWeight: FontWeight.w200),),
          ],);
  }
}