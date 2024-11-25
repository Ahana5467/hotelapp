import 'package:flutter/material.dart';
import 'package:hotelapp1/view/utils/constantcolor.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ABOUT HOLIDAY INN LUCKNOW AIRPORT",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Constantcolor.BLACK),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Text("Holiday Inn Lucknow Airport welcomes you to explore the beautiful city Lucknow which is known for its polite mannerism and warm hospitality in Uttar Pradesh, India. It has 190 spacious and cozy rooms and suites with air-conditioning and free Wi-Fi, which give a view of the cityscape as well as the pool. All the rooms are furnished with a blend of style and functionality in mind. The hotel features modern interiors, picturesque outdoors, 24 hours fitness center and matchless banquet space, making for an ecstatic potion appealing to the heart and the senses. Holiday Inn Lucknow Airport boasts of an array of Food & Beverage outlet. It has Viva-all-day dining, Viva Deli, a lobby bar, a pool side bar and barbeque & grill at roof top terrace restaurant & bar The hotel is minutes away from Chaudhary Charan Singh International Airport Walking distance to Transport Nagar metro station which provides easy access to the major city center. North India's largest shopping mall are approximately 10 minutes' drive from the hotel.",
                        maxLines: 10,
                        style: TextStyle(fontSize: 20,color: Colors.grey)),
      ),
    );
  }
}