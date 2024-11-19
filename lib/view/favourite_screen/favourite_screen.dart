import 'package:flutter/material.dart';
import 'package:hotelapp1/view/home_screen/home_screen.dart';
import 'package:hotelapp1/view/utils/constantcolor.dart';
import 'package:hotelapp1/view/widgets/bottontext_screen.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        backgroundColor: Constantcolor.WHITE,
        title: Text("Your favourities",style: TextStyle(color: Constantcolor.BLACK,fontSize: 20,fontWeight: FontWeight.w600),),
      ),
      body:Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Like a stay? Add it to your favourites!",style: TextStyle(color: Constantcolor.BLACK,fontSize: 20,fontWeight: FontWeight.w600)),
            SizedBox(height: 15,),
            Row(
              children: [
                CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.pink.shade100,
                  child: Icon(Icons.favorite,color: Constantcolor.BLACK,),
                ),
                SizedBox(width: 8,),
                Text("Add stays here to always",style: TextStyle(color: Constantcolor.BLACK,fontSize: 15,)),
                Text(" have them handy",style: TextStyle(color: Constantcolor.BLACK,fontSize: 15,fontWeight: FontWeight.bold)),
              ],
            ),
            SizedBox(height: 15),
            Row(
              children: [
                CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.green.shade100,
                  child: Icon(Icons.map,color: Constantcolor.BLACK,),
                ),
                SizedBox(width: 8,),
                Text("Continue planning your trip",style: TextStyle(color: Constantcolor.BLACK,fontSize: 15,fontWeight: FontWeight.w600)),
                Text(" on your computer or tablet",style: TextStyle(color: Constantcolor.BLACK,fontSize: 15,)),
              ],
            ),
            SizedBox(height: 15),
            BottontextScreen(bottonText: "Start search",onButtonPressed: () {Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen(),));})
          ],
        ),
      )
    );
  }
}