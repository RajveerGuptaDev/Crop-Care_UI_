import 'package:crop_care1/Profile_Page.dart';
import 'package:crop_care1/Splash_Screen.dart';
import 'package:crop_care1/shop_page.dart';
import 'package:crop_care1/soil_page.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'expert.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {



  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Crop Care',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: SplashScreen(),
    );
  }
}

class CropCareHomePage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
      length: 4, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Crop Care'),
          actions: [
            IconButton(
              icon: const Icon(Icons.person),
              onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> ProfilePage())

                );
                // Add action for profile icon
              },
            ),
          ],
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Home'),
              Tab(text: 'Expert'),
              Tab(text: 'Shop'),
              Tab(text: 'Soil'),
            ],
          ),
        ),
        body: TabBarView(

          children: [
            HomePage(),
            ExpertPage(),
            ShopPage(),
            SoilPage(),
          ],
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CarouselSlider(
            options: CarouselOptions(
              height: 200,
              autoPlay: true,
              enlargeCenterPage: true,
              aspectRatio: 16/9,
              viewportFraction: 0.8,
            ),
            items: [
              'https://i5.walmartimages.com/asr/bf7e23e8-62b2-4672-91f9-610ba9c2d8ff_1.7a505b16dad3034231ff68a1a6571af8.jpeg?odnHeight=450&amp;odnWidth=450&amp;odnBg=FFFFFF',
              'https://ph-live.slatic.net/p/0385f68a5d90ae654697b9a776e2fb23.jpg',
              'https://i5.walmartimages.com/asr/be16b1ff-d261-458b-b456-5fbed80fe3a7.8a2b9f518fa72a677715a815090388cb.jpeg',
              'https://i5.walmartimages.com/asr/b5a886ee-4806-4377-bf87-e3e54e958c6e.13118a3890dfd3f577c0f4b05b6c7ba1.jpeg?odnWidth=1000&odnHeight=1000&odnBg=ffffff',
            ].map((item) => Container(
              margin: const EdgeInsets.symmetric(horizontal: 5),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5.0),
                child: Image.network(item, fit: BoxFit.cover, width: double.infinity),
              ),
            )).toList(),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Handle current location button press
                  },
                  child: const Text('Current Location',selectionColor: Colors.green,),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    // Handle crop options button press
                  },
                  child: const Text('Crop Options',selectionColor: Colors.green,),
                ),
                     const SizedBox(height: 20),
                ElevatedButton(

                  onPressed: () {
                    // Handle crop options button press
                  },
                  child: const Text('Select Language',selectionColor: Colors.green,),
                ),
                const SizedBox(height: 20),
                GridView(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                  ),
                  shrinkWrap: true,
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  children: [
                    _buildCard('Fertilizer Calculator', Icons.calculate),
                    _buildCard('Pest and Disease', Icons.warning),
                    _buildCard('Tips', Icons.tips_and_updates),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCard(String title, IconData icon) {
    return Card(
      elevation: 4,
      child: InkWell(
        onTap: () {
          // Handle card tap
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 50, color: Colors.green),
            const SizedBox(height: 10),
            Text(title, style: const TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}





