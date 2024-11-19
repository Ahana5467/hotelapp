import 'package:flutter/material.dart';
import 'package:hotelapp1/view/filters_screen/widgets/customcheckbox.dart';
import 'package:hotelapp1/view/filters_screen/widgets/customrating.dart';
import 'package:hotelapp1/view/hotel_screen/hotel_screen.dart';
import 'package:hotelapp1/view/widgets/bottontext_screen.dart';

class FiltersScreen extends StatefulWidget {
  const FiltersScreen({super.key});
  @override
  State<FiltersScreen> createState() => _FiltersScreenState();
}
class _FiltersScreenState extends State<FiltersScreen> {
  double minPrice = 0;
  double maxPrice = 0;
  double distance = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Filters",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
        actions: [Center(child: Text("RESET",style: TextStyle(color: Colors.grey,fontSize: 16 ),))],
      ),
      body:SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10),
                  Text("PRICE PER NIGHT",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
                  SizedBox(height: 8),
              RangeSlider(
                values: RangeValues(minPrice, maxPrice),
                min: 0,
                max: 50000,
                onChanged: (values) {
                  setState(() {});
                  minPrice = values.start;
                  maxPrice = values.end;
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Min price",style: TextStyle(color: Colors.grey),),
                  Text("Max price",style: TextStyle(color: Colors.grey),),
                ]),SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding:EdgeInsets.all(8),
                      width: 200,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(3),border: Border.all(color: Colors.black)),
                    child: Text("890 ₹"),
                    ),
                    Container(
                       padding:EdgeInsets.all(8),
                      width: 200,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(3),border: Border.all(color: Colors.black)),
                    child: Row(children: [SizedBox(width: 115),Text("44000+ ₹"),],)
                    ),
                  ]),
                  SizedBox(height: 15),
                  Text("RATING",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      customrating(color: Colors.red.shade900,text: "0+",),               
                      customrating(color: Colors.yellow.shade900,text: "7+",), 
                      customrating(color: Colors.green.shade300,text: "7.5+",),
                      customrating(color: Colors.green.shade600,text: "8+",),
                      customrating(color: Colors.green.shade900,text: "8.5+",),  
                    ],
                  ),
                  SizedBox(height: 10),
                  Divider(),
                  SizedBox(height: 10),
                  Text("DISTANCE FROM",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
                  SizedBox(height: 30),
                  Text("Location",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.w300),),
                  Text("Lucknow",style: TextStyle(fontSize: 10,color: Colors.grey,fontWeight: FontWeight.w300),),
                  SizedBox(height: 40),
                  Row(children: [SizedBox(width: 30),Text("max: 20.0 km"),],),
                  Slider(
                    value: distance,
                    min: 0,
                    max: 50,
                    onChanged: (value) {
                    setState(() {});
                    distance = value;
                }),
                Divider(),
                Row(
                  children: [Column(children: [Text("Property type",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.w300),),
                  Text("All",style: TextStyle(fontSize: 15,color: Colors.grey,fontWeight: FontWeight.w300),),
                  SizedBox(height: 10,)
                  ],),
                  Spacer(),
                  Icon(Icons.arrow_forward_ios,color: Colors.black,)
                  ]),
                  Divider(),
                  Text("MORE FILTERS",style:TextStyle(fontSize: 10,color: Colors.black,fontWeight: FontWeight.bold) ),
                  SizedBox(height: 30),
                  Customcheckbox(text: "Free cancellation",),
                  SizedBox(height: 15),
                  Customcheckbox(text: "Breakfast included"),
                  SizedBox(height: 15),
                  Customcheckbox(text: "All-inclusive"),
                  SizedBox(height: 15),
                  Customcheckbox(text: "Pool"),
                  SizedBox(height: 15),
                  Customcheckbox(text: "WiFi"),
                  SizedBox(height: 15),
                  Customcheckbox(text: "Parking"),
                  SizedBox(height: 15),
                  Customcheckbox(text: "Air conditioning"),
                  SizedBox(height: 15),
                  Customcheckbox(text: "Restaurant"),
                  SizedBox(height: 15),
                  Customcheckbox(text: "Pet friendly"),
                  SizedBox(height: 15),
                  Customcheckbox(text: "Family friendly"),
                  SizedBox(height: 15),
            ]))),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(12),
          child: BottontextScreen(bottonText: "Show results",onButtonPressed: () {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HotelScreen(),));
          },),
        )
    );
  }
}
