import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:hotelapp1/view/details_screen/info_screen/info_screen.dart';
import 'package:hotelapp1/view/details_screen/prices_screen/prices_screen.dart';
class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  int _currentIndex = 0; // Tracks the current carousel slide

  final List<String> imageUrls = [
    "https://media.istockphoto.com/id/1300757575/photo/side-view-of-hotel-amenities-on-the-bed.jpg?s=2048x2048&w=is&k=20&c=rxKbL8G0A8zPoV6BsXJBNxt_RcVBHbOw109CCB573qI=",
    "https://media.istockphoto.com/id/2157251714/photo/a-spacious-modern-bedroom-interior-captured-in-a-realistic-photographic-style.jpg?s=2048x2048&w=is&k=20&c=BW5BkNsjHbNwHcjJEzrNi0EZ2YYMpf1cuPHHfCOcx9Q=",
    "https://media.istockphoto.com/id/2160552314/photo/simple-wooden-furnishings-interior-touches-for-your-minimizing-bed-room.jpg?s=2048x2048&w=is&k=20&c=rKzKF4tqWb1b3fKS1WP6TO692_VnRwiEnU-E7H-mP5s=",
    "https://media.istockphoto.com/id/674909778/photo/happy-backpacker-traveller-stay-in-high-quality-hotel.jpg?s=2048x2048&w=is&k=20&c=OMP8K8J9s4utfBRMKhxdZidq4S6ALCJKXZs6RF7wX1E=",
    "https://media.istockphoto.com/id/1336116827/photo/suitcase-delivered-standing-in-hotel-room-concept-of-hotel-service-and-travel.jpg?s=2048x2048&w=is&k=20&c=ykSl5an5rjV_nhEb7yLmW8Gymc81LyGaTVNIHXR7zrw=",
  ];
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: 2,
      child: Scaffold(
        // appBar: AppBar(
        //   leading: Icon(Icons.arrow_back),
        //   actions: [
        //     Icon(Icons.share),
        //     SizedBox(width: 10),
        //     Icon(Icons.favorite_border),
        //     SizedBox(width: 10),
        //   ],
        // ),
        // body: Column(
        //   children: [
        //     // Hotel Image Carousel
        //     Image.network(
        //       "https://media.istockphoto.com/id/1129076301/photo/chinese-style-bedroom-interior.jpg?s=2048x2048&w=is&k=20&c=DzYc3ul4URFHjJUlGhTTiTVuFFJG6O4GhphPHjZjSXA=", // Replace with actual image URL
        //       height: 200,
        //       width: double.infinity,
        //       fit: BoxFit.cover,
        //     ),
            
        //   ]
        // )
        body: 
        CustomScrollView(
          slivers: [
            // SliverAppBar with carousel slider
            SliverAppBar(
              expandedHeight: 300,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                background: Stack(
                  children: [
                    // Carousel Slider
                    CarouselSlider(
                      items: imageUrls.map((url) {
                        return Image.network(
                          url,
                          fit: BoxFit.cover,
                          width: double.infinity,
                        );
                      }).toList(),
                      options: CarouselOptions(
                        height: 300,
                        viewportFraction: 1.0,
                        onPageChanged: (index, reason) {
                          setState(() {
                            _currentIndex = index;
                          });
                        },
                      ),
                    ),
                    // Dots Indicator
                    Positioned(
                      bottom: 10,
                      left: 0,
                      right: 0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: imageUrls.map((url) {
                          int index = imageUrls.indexOf(url);
                          return Container(
                            width: 8,
                            height: 8,
                            margin: EdgeInsets.symmetric(horizontal: 4),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: _currentIndex == index
                                  ? Colors.white
                                  : Colors.white.withOpacity(0.5),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ],
                ),
              ),
              actions: [
                IconButton(
                  icon: Icon(Icons.share, color: Colors.white),
                  onPressed: () {
                    // Handle share action
                  },
                ),
                IconButton(
                  icon: Icon(Icons.favorite_border, color: Colors.white),
                  onPressed: () {
                    // Handle favorite action
                  },
                ),
              ],
            ),
          // Content below the app bar
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'FEATURED PRICE',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Container(
                        // Background color for the TabBar
                        child: TabBar(
                          labelColor: Colors.blue,
                          unselectedLabelColor: Colors.black,
                          indicatorColor: Colors.blue,
                          indicatorSize: TabBarIndicatorSize.tab,
                          dividerColor: Colors.white,
                        
                        tabs: [
                    Tab(text: 'Prices'),
                    Tab(text: 'Info'),
                  ],
                ),
              ),
             
              // Expanded(
              //   child: TabBarView(children: [
              //     PricesScreen(),
              //     InfoScreen()
              //   ]),
              // )
                      ]
                    )
                )
                ]
              )
            ),
            SliverFillRemaining(
              child: TabBarView(
                children: [
                   PricesScreen(),
                   InfoScreen()
          ]
        )
       ),
          ]
        )
          
      )  
    );
    
  }
}



// bottom: TabBar(
//           labelColor: Colors.white,
//           unselectedLabelColor: Colors.white,
//           indicatorColor: Colors.white,
//           indicatorSize: TabBarIndicatorSize.tab,
//           dividerColor: Colors.white,
//           tabs: [Text("Chats"),Text("Status"),Text("Calls"),]),
//       ),
//       body: TabBarView(children: [
//         ChatsTab(),
//         StatusTab(),
//         CallsTab()
//       ]),
//     )