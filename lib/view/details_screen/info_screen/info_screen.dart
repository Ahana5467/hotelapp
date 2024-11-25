import 'package:flutter/material.dart';
import 'package:hotelapp1/dummbydb.dart';
import 'package:hotelapp1/view/details_screen/info_screen/about_screen/about_screen.dart';
import 'package:hotelapp1/view/details_screen/info_screen/amenities_screen/amenities_screen.dart';
import 'package:hotelapp1/view/details_screen/info_screen/feedback_screen/feedback_screen.dart';
import 'package:hotelapp1/view/details_screen/info_screen/widgets/custom_container_box.dart';
import 'package:hotelapp1/view/details_screen/info_screen/widgets/custom_seemore.dart';
import 'package:hotelapp1/view/details_screen/info_screen/widgets/customfeedback.dart';
import 'package:hotelapp1/view/details_screen/info_screen/widgets/customtextbox.dart';
import 'package:hotelapp1/view/utils/constantcolor.dart';

class InfoScreen extends StatefulWidget {
  const InfoScreen({super.key});

  @override
  State<InfoScreen> createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {
  bool isOn = false;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(10),
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.blue.shade100
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.notifications,color: Colors.black,),
                    Text("Notify me about lower prices",style: TextStyle(color: Constantcolor.BLACK,fontSize: 12,fontWeight: FontWeight.bold),),
                    Switch(value: isOn, onChanged: (value) {
                      isOn = value;
                      setState(() {});
                    },)
                  ]),
              ),
              SizedBox(height:10),
              Divider(),
              Text("RATING",style: TextStyle(color: Constantcolor.BLACK,fontSize: 12,fontWeight: FontWeight.bold),),
              SizedBox(height:10),
              Row(children: [Text("8.5",style: TextStyle(color: Constantcolor.BLACK,fontSize: 17,fontWeight: FontWeight.bold),),
              SizedBox(width: 5),
              Text("Excellent",style: TextStyle(color: Constantcolor.BLACK,fontSize: 12,fontWeight: FontWeight.bold),),
              ],),
              Text("trivago Rating Index based on 83 reviews across the web",style: TextStyle(color: Colors.grey,fontSize: 9,fontWeight: FontWeight.bold),),
              SizedBox(height:10),
              Divider(),
              SizedBox(height:10),
              Text("REVIEWS",style: TextStyle(color: Constantcolor.BLACK,fontSize: 12,fontWeight: FontWeight.bold),),
              SizedBox(height:10),
              Customfeedback(title: Dummbydb.feedbackdetails[0]["title"], 
              des: Dummbydb.feedbackdetails[0]["description"], 
              name: Dummbydb.feedbackdetails[0]["reviewed by"] , 
              date:Dummbydb.feedbackdetails[0]["date"] ),
              CustomSeemore(
                onButtonPressed: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context) =>FeedbackScreen() ,));
                },
              ),
              SizedBox(height:10),
              Divider(),
              SizedBox(height:10),
              Text("AMENITIES",style: TextStyle(color: Constantcolor.BLACK,fontSize: 12,fontWeight: FontWeight.bold),), 
              SizedBox(height:10),
              Custom_text_box(icon: Icons.wifi,text: "WiFi in lobby",color: Constantcolor.BLACK,icons: Icons.wifi,texts: "WiFi in rooms",colors: Constantcolor.BLACK,size: 10,sizes: 90,), 
              SizedBox(height:10),
              Custom_text_box(icon: Icons.pool,text: "Pool",color: Constantcolor.BLACK,icons: Icons.spa,texts: "Spa",colors: Colors.grey,size: 10,sizes: 135,),
              SizedBox(height:10),
              Custom_text_box(icon: Icons.local_parking,text: "Parking",color: Colors.grey,icons: Icons.pets,texts: "Pets",colors: Colors.grey,size: 10,sizes: 117,), 
               CustomSeemore(onButtonPressed: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context) =>AmenitiesScreen() ,));
               },),
               Padding(
                padding: const EdgeInsets.all(12),
                child: Container(
                width: double.infinity,
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
                        Text("Compare with stays from your search",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
                        SizedBox(height: 10),
                        Text("Select one stay to compare",style: TextStyle(color: Colors.black,fontSize: 12,),),
                        SizedBox(height: 10),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Row(
                              children: List.generate(Dummbydb.infodetails.length, (index) => 
                                CustomContainerBox(
                                  rate: Dummbydb.infodetails[index]["rating"], 
                                  imageUrl: Dummbydb.infodetails[index]["imageUrl"], 
                                  title:  Dummbydb.infodetails[index]["hotelname"],
                                   subtitle:  Dummbydb.infodetails[index]["hotelname2"],)
                              )
                            ),
                          ),
                        ),
                    SizedBox(height: 10), 
                    Container(
                      padding:EdgeInsets.all(10) ,
                      width: double.infinity,
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.grey
                    ),
                      child: Center(child: Text("Compare",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),)),
                    ),
                    SizedBox(height: 10), 
                      ])
                      )
                      ),
                      SizedBox(height: 10),
                      Text("ABOUT HOLIDAY INN LUCKNOW AIRPORT",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Constantcolor.BLACK),),
                      SizedBox(height: 10),
                      Text("Holiday Inn Lucknow Airport welcomes you to explore the beautiful city Lucknow which is known for its polite mannerism and warm hospitality in Uttar Pradesh, India. It has 190 spacious and cozy rooms and suites with air-conditioning and free Wi-Fi, which give a view of the cityscape as well as...",
                      maxLines: 6,
                      style: TextStyle(fontSize: 12,color: Colors.grey)),
                      CustomSeemore(onButtonPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) =>AboutScreen() ,));
                      },),
                      SizedBox(height: 10),
                      Divider(),
                      Text("CONTACT",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Constantcolor.BLACK),),
                      Text("Kanpur Road, Near Transport Nagar Metro Station Lucknow 226008",maxLines: 2,
                      style: TextStyle(fontSize: 12,color: Colors.grey)),
                      SizedBox(height: 10),
                    //   Container(
                    //     height: 200,
                    //     width: double.infinity,
                    //     decoration: BoxDecoration(
                    //       borderRadius: BorderRadius.circular(5),
                    //       image: DecorationImage(image: NetworkImage("https://media.wired.com/photos/59269cd37034dc5f91bec0f1/master/pass/GoogleMapTA.jpg"))
                    //     ),
                    //   ),
                    // SizedBox(height: 10),
                    ],
                  )
              )
          ),
        // bottomNavigationBar: Padding(
        //       padding: const EdgeInsets.all(16),
        //       child: Row(
        //       children: [
        //         Column(
        //           children: [
        //             Text("₹12,600",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w800,color:Colors.green.shade300),),
        //             Text("per night on Holiday Inn",style: TextStyle(fontSize: 10,color: Constantcolor.BLACK),),
        //           ]
        //         ),
        //       Spacer(),
        //       Text("View Deal",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w800,color:Constantcolor.BLACK),),
        //       SizedBox(width: 5),
        //       Icon(Icons.arrow_forward_ios,color: Constantcolor.BLACK,size: 16,)
        //                 ],
        //               ),
        //     ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(16),
            child: Container(
              decoration: BoxDecoration(
              color: Colors.white, // Background color for the bar
              borderRadius: BorderRadius.circular(10), // Optional rounded corners
              boxShadow: [
                 BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  blurRadius: 4,
                  offset: Offset(0, 2), // Shadow position
               ),
           ],
        ),
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween, // Align children properly
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min, // Prevent unnecessary height expansion
          children: [
            Text(
              "₹12,600",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w800,
                color: Colors.green.shade300,
              ),
            ),
            Text(
              "per night on Holiday Inn",
              style: TextStyle(
                fontSize: 10,
                color: Colors.black, // Use Colors.black
              ),
            ),
          ],
        ),
        Row(
          children: [
            Text(
              "View Deal",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w800,
                color: Colors.black, // Use Colors.black
              ),
            ),
            SizedBox(width: 5),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.black, // Use Colors.black
              size: 16,
            ),
          ],
        ),
      ],
    ),
  ),
),

    );
  }

}


