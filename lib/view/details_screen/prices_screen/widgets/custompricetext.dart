import 'package:flutter/material.dart';

class Custompricetext extends StatelessWidget {
  final  String site;
  final  String price;
  final  String description;
  final  String features;
  final String? lowestPrice;
  final String? officalSite;
  final  Color color;
  const Custompricetext({super.key, required this.site, required this.price, required this.description, required this.features, required this.color, this.lowestPrice, this.officalSite});

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.all(10),
      height:130 ,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: Colors.black),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // if(lowestPricee != null && officalSite != null),
        children: [
          if( lowestPrice!= null || officalSite != null)
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            if (lowestPrice != null)
          Container(
            decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: Colors.red.shade400),
          ),child: Text(lowestPrice!,style: TextStyle(fontSize: 12,fontWeight: FontWeight.w800,color: Colors.red.shade400)),
          ),
          SizedBox(width: 5),
           if (officalSite != null) 
          Container(
            decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.blue.shade300
          ),child: Text(officalSite!,style: TextStyle(fontSize: 12,fontWeight: FontWeight.w800,color: Colors.black)),),
        ],),
        SizedBox(height: 5),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Row(
            children: [
              Icon(Icons.hotel,color: Colors.green.shade300,size: 12,),
              SizedBox(width: 5),
              Text(site,style: TextStyle(fontSize: 12,fontWeight: FontWeight.w800,color: Colors.black),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 17),
          child: Row(children: [
            Expanded(child: Text(description,style: TextStyle(fontSize: 12,fontWeight: FontWeight.w800,color: Colors.grey),)),
            Column(
              children: [
                Text(price,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w800,color:Colors.green.shade300),),
                Text("per night",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w800,color: Colors.green.shade300),),
              ],
            ),
            Icon(Icons.arrow_forward_ios,size: 15,color: Colors.green.shade300)
          ],),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            children: [
              Text("✔",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w800,color: color),),
              SizedBox(width: 5),
              Text(features,style: TextStyle(fontSize: 12,fontWeight: FontWeight.w800,color: color),),
            ],
          ),
        )
      ],),
    );
  }
}
    