import 'package:flutter/material.dart';

class CustomContainerBox extends StatelessWidget {
  final String title;
  final String subtitle;
  final String rate;
  final String imageUrl;
  const CustomContainerBox({
    super.key,  required this.rate, required this.imageUrl, required this.title, required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
               padding: const EdgeInsets.all(10),
               child: Container(
               padding: EdgeInsets.all(8),
               decoration: BoxDecoration(
               border: Border.all(color: Colors.black),
               borderRadius: BorderRadius.circular(5),
            ),
         child:
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                    Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Text(title,style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
                    Text(subtitle,style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
                     SizedBox(height: 5),
                    Text("Lucknow",style: TextStyle(color: Colors.grey,fontSize: 10,fontWeight: FontWeight.bold),),
                     Row(children: [
                     Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.orange,),child: Text(rate,style: TextStyle(color: Colors.white,fontSize: 12),),),
                       SizedBox(width: 10),
                        Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                              Text("Fair",style: TextStyle(color: Colors.black,fontSize: 13,fontWeight: FontWeight.bold),),
                              Text("27 reviews",style: TextStyle(color: Colors.grey,fontSize: 10,fontWeight: FontWeight.bold),),
                             ],
                           )
                        ],)
                     ]),
                   ),
                  SizedBox(width: 5),
                  Container(
                     width: 200,
                     height: 100,
                     decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(8),
                     image: DecorationImage(image: NetworkImage(
                        imageUrl),
                       fit: BoxFit.cover)
                    ),)
                 ]),
               ),
            );
  }
}
