import 'package:flutter/material.dart';
import 'package:hotelapp1/view/details_screen/details_screen.dart';
import 'package:hotelapp1/view/filters_screen/filters_screen.dart';
import 'package:hotelapp1/view/hotel_screen/widgets/customradio.dart';
import 'package:hotelapp1/view/utils/constantcolor.dart';

class HotelScreen extends StatefulWidget {

  const HotelScreen({super.key});

  @override
  State<HotelScreen> createState() => _HotelScreenState();
}

class _HotelScreenState extends State<HotelScreen> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildtextfield(),
            SizedBox(height: 5),
            _buildscrollcard(),
            _buildcardscreen(), 
          ]
        ),
      ),     
    );
  }

  Padding _buildscrollcard() {
    return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(3,(index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(border: Border.all(color: Colors.black,width: 1),borderRadius: BorderRadius.circular(5)),
                      child: Row(
                        children: [
                          Icon(Icons.info_outline),
                          Text("How payments to us affect ranking",style: TextStyle(fontSize: 10),),
                          SizedBox(width: 20),
                          Text("X",style: TextStyle(color: Constantcolor.BLACK,fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ),
                ),
                  ),
              ),
            ),
          );
  }

  Padding _buildtextfield() {
    return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
            child: Container(
              padding: EdgeInsets.all(10),
                   decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        blurRadius: 5,
                       )
                      ]
                      ),
                      child: Column(
                        children: [
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Destination",style: TextStyle(color: Colors.grey,fontSize: 9),),
                                SizedBox(height: 5),
                                TextField(
                                decoration: InputDecoration(
                                  hintText: "Lucknow",
                                  border: OutlineInputBorder(),
                                ),
                              ),
                              ]
                            ),
                          ),
                          ),
                          SizedBox(height: 10,),
                          Divider(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(padding: EdgeInsets.all(8)),
                                  Column(
                                    children: [
                                      Text("Dates",style: TextStyle(color: Colors.grey,fontSize: 15),),
                                      Text("7 Nov - 8 Nov",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18)),
                                    ],
                                  ),
                                  
                                  Expanded(
                                    child: Column(
                                      children: [
                                        Text("Romms",style: TextStyle(color: Colors.grey,fontSize: 15),),
                                        Text("2 guests, 1 room",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18)),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Divider(),
                              SizedBox(height: 5,),
                              Row(children: [
                                SizedBox(width: 40),
                                IconButton(onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) =>FiltersScreen() ,));
                                }, 
                                icon:Icon(Icons.filter_hdr_outlined,color: Constantcolor.PRIMARY,),),
                                Text("FILTER",style: TextStyle(color: Constantcolor.PRIMARY,fontSize: 15,)),
                                Spacer(),
                                ElevatedButton(onPressed: () {
                                showModalBottomSheet(
                                  enableDrag: false,
                                  isScrollControlled: true,
                                  context: context, builder: (context) => Container(
                                    width: double.infinity,
                                    padding: EdgeInsets.all(8),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Sort by",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w900),),
                                      SizedBox(height: 10),
                                      Customradio(text: "Our recommendations"),
                                      SizedBox(height: 10),
                                      Customradio(text: "Ratings & Recommended"),
                                      SizedBox(height: 10),
                                      Customradio(text: "Price & Recommended"),
                                      SizedBox(height: 10),
                                      Customradio(text: "Distance & Recommended"),
                                      SizedBox(height: 10),
                                      Customradio(text: "Rating only"),
                                      SizedBox(height: 10),
                                      Customradio(text: "Price only"),
                                      SizedBox(height: 10),
                                      Customradio(text: "Distance only"),
                                      SizedBox(height: 10),
                                    ]
                                                                    ),
                                  ),);
                                },
                                child:Row(
                                  children: [
                                    Icon(Icons.sort,color:Constantcolor.PRIMARY),
                                    Text("SORT",style: TextStyle(color: Constantcolor.PRIMARY,fontSize: 15,)),
                                  ],
                                ),),
                                SizedBox(width: 90),
                              ],)
                            ],
                          ),
                      ),
                    );
  }

  InkWell _buildcardscreen() {
    return InkWell(
            onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) =>DetailsScreen() ,));
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(4, (index) => Padding(
                padding: const EdgeInsets.all(12),
                child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        blurRadius: 5)]),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              children: [
                                Image.network(
                                  fit: BoxFit.cover,
                                  height: 150,
                                  width: double.infinity,
                                  "https://media.istockphoto.com/id/185083188/photo/luxury-shangri-la-hotel-room.jpg?s=1024x1024&w=is&k=20&c=c07mcS7zJ9-cPEjRS4JE-qGPymHSAoU-DNBsa8wmA8E="),
                                  Positioned(
                                    top: 8,
                                    left: 8,
                                    child: Container(
                                    color: Colors.black54,
                                    padding: EdgeInsets.all(4),
                                    child: Text("Viewed today",style: TextStyle(color: Colors.white,fontSize: 12),),
                                  )),
                                  Positioned(
                                    top: 8,
                                    right: 8,
                                    child: Container(
                                      height: 40,
                                      width: 30,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.black54
                                    ),
                                    child: Icon(Icons.favorite_border_outlined,color: Constantcolor.WHITE,size: 20,),
                                  ))
                              ],
                            ),
                            SizedBox(height: 9,),
                            Row(children: [
                              Icon(Icons.star,color: Colors.amber,size:10 ,),
                              Icon(Icons.star,color: Colors.amber,size: 10,),
                              Text("Hostel",style: TextStyle(color: Colors.black,fontSize: 10,fontWeight: FontWeight.bold),)
                            ],),
                             Text("Roop",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                             SizedBox(height: 9),
                             Row(children: [
                              Container(
                                padding: EdgeInsets.all(4),
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.black54,),child: Text(" 7.1 ",style: TextStyle(color: Colors.white,fontSize: 12),),),
                                SizedBox(width: 5),
                                Text("Fair",style: TextStyle(color: Colors.black,fontSize: 10,fontWeight: FontWeight.bold),),
                                SizedBox(width: 5),
                                Icon(Icons.location_on,color: Colors.black,),
                                SizedBox(width: 5),
                                Text("2.8 km from centre",style: TextStyle(color: Colors.black,fontSize: 10,fontWeight: FontWeight.bold),),
                             ],),
                             SizedBox(height: 5),
                             Container(
                              padding: EdgeInsets.all(9),
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),border: Border.all(color: Colors.black,width: 1)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [Column(
                                children: [
                                  Text("₹600",style: TextStyle(color: Colors.green.shade700,fontSize: 20,fontWeight: FontWeight.bold),),
                                  Text("MakeMyTrip",style: TextStyle(color: Colors.black,fontSize: 10),)
                                ]),
                                Spacer(),
                                Text("View deal",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                                SizedBox(width: 5),
                                Icon(Icons.arrow_forward_ios)
                              ],),
                             ),
                             SizedBox(height: 10),
                             Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [Column(
                                children: [
                                  Text("₹517",style: TextStyle(color: Colors.black,fontSize: 10),),
                                  Text("Agoda",style: TextStyle(color: Colors.black,fontSize: 10),)
                                ]),
                                Spacer(),
                                Text("More prices",style: TextStyle(color: Colors.grey,fontSize: 10),),
                              ],),
                          ],
                        ),  
                     ),
                    ) ,
                  ),
                ),
          );
  }
}