import 'package:flutter/material.dart';
import 'package:hotelapp1/dummbydb.dart';
import 'package:hotelapp1/view/details_screen/details_screen.dart';
import 'package:hotelapp1/view/favourite_screen/favourite_screen.dart';
import 'package:hotelapp1/view/filters_screen/filters_screen.dart';
import 'package:hotelapp1/view/home_screen/home_screen.dart';
import 'package:hotelapp1/view/hotel_screen/widgets/customradio.dart';
import 'package:hotelapp1/view/setting_screen/setting_screen.dart';
import 'package:hotelapp1/view/utils/constantcolor.dart';



class HotelScreen extends StatefulWidget {

  const HotelScreen({super.key});

  @override
  State<HotelScreen> createState() => _HotelScreenState();
}

class _HotelScreenState extends State<HotelScreen> {
  // bool isChecked = false;
  int selectedIndex = 0;
  

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
            // tabScreen[selectedIndex]
          ]
        ),
      ),     
       floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          // Add your map navigation logic here
        },
        label: Text('Map',style: TextStyle(color: Colors.white),),
        icon: Icon(Icons.map,color: Colors.white,),
        backgroundColor: const Color.fromARGB(255, 119, 93, 93),
      ),
       floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

bottomNavigationBar: Padding(
  padding: const EdgeInsets.all(16),
  child: Container(
    decoration: BoxDecoration(
      color: Colors.white, // Background color
      borderRadius: BorderRadius.circular(10), // Rounded corners
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          blurRadius: 4,
          offset: Offset(0, 2), // Shadow position
        ),
      ],
    ),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround, // Distribute items evenly
        children: [
          InkWell(
            onTap: () {
              setState(() {
                selectedIndex = 0; // Update selected index
              });
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => HomeScreen()),
              );
            },
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.hotel,
                  color: selectedIndex == 0 ? Colors.blue : Colors.grey,
                ),
                Text(
                  "Stays",
                  style: TextStyle(
                    color: selectedIndex == 0 ? Colors.blue : Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              setState(() {
                selectedIndex = 1; // Update selected index
              });
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => FavouriteScreen()),
              );
            },
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.favorite,
                  color: selectedIndex == 1 ? Colors.blue : Colors.grey,
                ),
                Text(
                  "Favourite",
                  style: TextStyle(
                    color: selectedIndex == 1 ? Colors.blue : Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              setState(() {
                selectedIndex = 2; // Update selected index
              });
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => SettingScreen()),
              );
            },
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.settings,
                  color: selectedIndex == 2 ? Colors.blue : Colors.grey,
                ),
                Text(
                  "Settings",
                  style: TextStyle(
                    color: selectedIndex == 2 ? Colors.blue : Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
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
                children: List.generate(Dummbydb.scrollcard.length,(index) =>Padding(
                  padding: const EdgeInsets.all(8.0),
                    child: Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(border: Border.all(color: Colors.black,width: 1),borderRadius: BorderRadius.circular(5)),
                        child: Row(
                          children: [
                            Icon(Icons.info_outline),
                            Text(Dummbydb.scrollcard[index],style: TextStyle(fontSize: 10),),
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
                                InkWell(
                                  onTap: () {
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
              children: List.generate(Dummbydb.hoteldetails.length, (index) => Padding(
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
                                  Dummbydb.hoteldetails[index]["imageUrl"]),
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
                              Text("Hotel",style: TextStyle(color: Colors.black,fontSize: 10,fontWeight: FontWeight.bold),)
                            ],),
                             Text(Dummbydb.hoteldetails[index]["Hotelname"],style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                             SizedBox(height: 9),
                             Row(children: [
                              Container(
                                padding: EdgeInsets.all(4),
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.black54,),child: Text(Dummbydb.hoteldetails[index]["rating"],style: TextStyle(color: Colors.white,fontSize: 12),),),
                                SizedBox(width: 5),
                                Text(Dummbydb.hoteldetails[index]["fair"],style: TextStyle(color: Colors.black,fontSize: 10,fontWeight: FontWeight.bold),),
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
                                  Text(Dummbydb.hoteldetails[index]["price"],style: TextStyle(color: Colors.green.shade700,fontSize: 20,fontWeight: FontWeight.bold),),
                                  Text(Dummbydb.hoteldetails[index]["booking name"],style: TextStyle(color: Colors.black,fontSize: 10),)
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


