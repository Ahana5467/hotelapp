import 'package:flutter/material.dart';
import 'package:hotelapp1/view/hotel_screen/hotel_screen.dart';
import 'package:hotelapp1/view/login_screen/login_screen.dart';
import 'package:hotelapp1/view/widgets/bottontext_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(height: 20,),
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Text("tri",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.red),),
                      Text("va",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.orange),),
                      Text("go",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.blue),),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
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
                          padding: EdgeInsets.all(8),
                          child: TextField(
                            decoration: InputDecoration(
                              labelText: "Destination",
                              hintText: "Lucknow",
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
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
                        SizedBox(height: 10,),
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: BottontextScreen(bottonText: "Search",onButtonPressed: () {
                           Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>HotelScreen() ,));
            
                          },),
                       ),
                      ],
                    ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(16),
                   child:  Text("We compare hotel prices from 100+ sites",
                    style: TextStyle(color: Colors.black),
                    ),
                   ),
                   SizedBox(height: 10,),
                Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
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
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text("Want to unlock more savings?",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                          SizedBox(height: 10,),
                          Image.network(
                           fit: BoxFit.cover,
                           height: 150,
                           width: double.infinity,
                           "https://images.pexels.com/photos/28915273/pexels-photo-28915273/free-photo-of-equestrian-statue-in-front-of-modern-hotel.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                          SizedBox(height: 10,),
                          Text("Log in to compare reward rates from various hotel chains and booking sites to standard prices on trivago"),
                          SizedBox(height: 15,),
                          BottontextScreen(bottonText: "Login in or create account",
                          onButtonPressed: () {
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginScreen(),));
                          },),
                        ],
                      ),
                    ),
                  ),
                 ),
            ],
          ),
        )
      ),
    );
  }
}

