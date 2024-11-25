import 'package:flutter/material.dart';
import 'package:hotelapp1/dummbydb.dart';
import 'package:hotelapp1/view/details_screen/prices_screen/widgets/customitems.dart';
import 'package:hotelapp1/view/details_screen/prices_screen/widgets/custompricetext.dart';

class PricesScreen extends StatelessWidget {
  const PricesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> items = [
      "Free cancellation",
      "Half board",
      "Breakfast included",
      "Pay at the property"
    ];

    return Scaffold(
      body:  SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("FEATURED PRICE",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w800,color: Colors.black),),
                SizedBox(height: 10),
                Custompricetext(
                  site: Dummbydb.priceDetails[0]["site"] , 
                  price:Dummbydb.priceDetails[0]["price"],
                  features: Dummbydb.priceDetails[0]["features"], 
                  color:Colors.green.shade300,
                  description: Dummbydb.priceDetails[0]["description"] ,
                  lowestPrice:" is lowest price",
                  officalSite: "Official hotel site",
                  ),
                SizedBox(height: 20),
                Text("SHOW PRICES WITH"),
                SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(items.length, (index) => Padding(
                        padding: const EdgeInsets.all(10),
                        child: CustomItems(item: items[index],),
                      ),),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Custompricetext(
                  site: Dummbydb.priceDetails[1]["site"] , 
                  price:Dummbydb.priceDetails[1]["price"],
                  features: Dummbydb.priceDetails[1]["features"], 
                  color:Colors.black,
                  description: Dummbydb.priceDetails[1]["description"] ,
                  officalSite: null,
                   lowestPrice:null,
                  ),
                  SizedBox(height: 15),
                  Column(
                    children: List.generate(Dummbydb.priceDetails.length, (index) =>Padding(
                      padding: const EdgeInsets.all(10),
                      child: Custompricetext(
                                        site: Dummbydb.priceDetails[index]["site"] , 
                                        price:Dummbydb.priceDetails[index]["price"],
                                        features: Dummbydb.priceDetails[index]["features"], 
                                        color:Colors.black,
                                        description: Dummbydb.priceDetails[index]["description"] ,
                                        officalSite: "Official hotel site",
                                         lowestPrice:null,
                                        ),
                    ) ,),
                  )
                ])   
          ),
      ),
      
    );
  }
}


