import 'package:crop_care1/main.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Set up the duration of the splash screen
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> CropCareHomePage())

      );
    }
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Center(

            child: Image.network(
              'https://scontent.fbho3-2.fna.fbcdn.net/v/t39.30808-6/369971188_605512748428012_6033949929474914118_n.jpg?stp=cp6_dst-jpg&_nc_cat=104&ccb=1-7&_nc_sid=6ee11a&_nc_ohc=b6sLOsE9vs0Q7kNvgHn2sce&_nc_ht=scontent.fbho3-2.fna&oh=00_AYD1mTyj7crDOdFYg1ZFAOM8A8Lw8-qg_s-si56byVWhLA&oe=66DFC859', // Replace with your network image URL
              fit: BoxFit.cover,


            ),
          ),

        ],
      ),
    );
  }
}
