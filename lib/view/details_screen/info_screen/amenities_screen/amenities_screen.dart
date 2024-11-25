import 'package:flutter/material.dart';
import 'package:hotelapp1/dummbydb.dart';
import 'package:hotelapp1/view/details_screen/info_screen/widgets/customtextbox.dart';
import 'package:hotelapp1/view/utils/constantcolor.dart';

class AmenitiesScreen extends StatelessWidget {
  const AmenitiesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // int detailsoption = 0;
    return Scaffold(
      appBar: AppBar(
        title: Text("Amenities",style: TextStyle(color: Constantcolor.BLACK,fontSize: 16,fontWeight: FontWeight.bold),), 
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               SizedBox(height:10),
                  Text("TOP AMENITIES",style: TextStyle(color: Constantcolor.BLACK,fontSize: 12,fontWeight: FontWeight.bold),), 
                  SizedBox(height:10),
                  Custom_text_box(icon: Icons.wifi,text: "WiFi in lobby",color: Constantcolor.BLACK,icons: Icons.wifi,texts: "WiFi in rooms",colors: Constantcolor.BLACK,size: 10,sizes: 90,), 
                  SizedBox(height:10),
                  Custom_text_box(icon: Icons.pool,text: "Pool",color: Constantcolor.BLACK,icons: Icons.spa,texts: "Spa",colors: Colors.grey,size: 10,sizes: 135,),
                  SizedBox(height:10),
                  Custom_text_box(icon: Icons.local_parking,text: "Parking",color: Colors.grey,icons: Icons.pets,texts: "Pets",colors: Colors.grey,size: 10,sizes: 117,), 
                  SizedBox(height:10),
                  Custom_text_box(icon: Icons.ac_unit,text: "A/C",color: Constantcolor.BLACK,icons: Icons.restaurant,texts: "Restaurant",colors: Colors.grey,size: 10,sizes: 137,),
                  SizedBox(height:10),
                  Custom_text_box(icon: Icons.local_bar,text: "Hotel bar",color: Constantcolor.BLACK,icons: Icons.sports_gymnastics,texts: "Gym",colors: Colors.grey,size: 10,sizes: 107,),
                  SizedBox(height: 20),
                  Text(Dummbydb.property[0]["proname"],style: TextStyle(color: Constantcolor.BLACK,fontSize: 12,fontWeight: FontWeight.bold),),
                  SizedBox(height: 20),
                  Text(" - ${Dummbydb.property[0]["details"].join("\n- ")}",style: TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.bold),),
                  SizedBox(height: 20),
                  Text(Dummbydb.property[1]["proname"],style: TextStyle(color: Constantcolor.BLACK,fontSize: 12,fontWeight: FontWeight.bold),),
                  SizedBox(height: 20),
                  Text(" - ${Dummbydb.property[1]["details"].join("\n- ")}",style: TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.bold),),
                  SizedBox(height: 20),
                  Text(Dummbydb.property[2]["proname"],style: TextStyle(color: Constantcolor.BLACK,fontSize: 12,fontWeight: FontWeight.bold),),
                  SizedBox(height: 20),
                  Text(" - ${Dummbydb.property[2]["details"].join("\n- ")}",style: TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.bold),),
                  SizedBox(height: 20),
                  Text(Dummbydb.property[3]["proname"],style: TextStyle(color: Constantcolor.BLACK,fontSize: 12,fontWeight: FontWeight.bold),),
                  SizedBox(height: 20),
                  Text(" - ${Dummbydb.property[3]["details"].join("\n- ")}",style: TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.bold),),
            ],    
          ),
        ),
      ),
    );
  }
}