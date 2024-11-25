import 'package:flutter/material.dart';
import 'package:hotelapp1/dummbydb.dart';
import 'package:hotelapp1/view/details_screen/info_screen/widgets/customfeedback.dart';
import 'package:hotelapp1/view/utils/constantcolor.dart';

class FeedbackScreen extends StatelessWidget {
  const FeedbackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Guests' Feedback",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Constantcolor.BLACK)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: List.generate(Dummbydb.feedbackdetails.length, (index) => Customfeedback(title: Dummbydb.feedbackdetails[index]["title"], 
                  des: Dummbydb.feedbackdetails[index]["description"], 
                  name: Dummbydb.feedbackdetails[index]["reviewed by"] , 
                  date:Dummbydb.feedbackdetails[index]["date"] ),)
          ),
        ),
      ),
    );
  }
}
