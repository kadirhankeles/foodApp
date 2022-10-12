import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class restaurant extends StatelessWidget {
  final String restaurantImage;
  final String restaurantName;
  final double restaurantStar;
  final String restaurantTime;
  final String restaurantDistance;

  restaurant({super.key, required this.restaurantImage, required this.restaurantName, required this.restaurantStar, required this.restaurantTime, required this.restaurantDistance});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: 
        [Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Container(
            width: 360,
            height: 97,
            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20),boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(0.0, 0.0),
                  blurRadius: 5.0,
                ),
              ],),
            child: Row(
              children: [
                
                Container(width: 97,
                height: 97,
                decoration: BoxDecoration(
                  
                  image: DecorationImage(image: AssetImage("$restaurantImage")),
                  borderRadius: BorderRadius.circular(20))),
                  
                  SizedBox(width: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('$restaurantName', style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold, color: Colors.black),),
                    SizedBox(height: 10,),
                    Row(
                      
                      children: [
                      Icon(Icons.star, color: Color(0xffFFD600), size: 19,),
                      SizedBox(width: 5,),
                      Text('$restaurantStar', style: TextStyle(color: Color(0xffB3B3B3)),),
                    ],),
                    SizedBox(height: 25,),
                    Row(
                      children: [
                        Icon(Icons.watch_later_outlined, size: 19, color: Color(0xff9B9B9B),),
                        SizedBox(width: 5,),
                        Text('$restaurantTime', style: TextStyle(color: Color(0xffB3B3B3)),),
                        SizedBox(width: 15,),
                        Icon(Icons.circle, size: 5, color: Color(0xffB3B3B3),),
                        SizedBox(width: 5,),
                        Text('$restaurantDistance', style: TextStyle(color: Color(0xffB3B3B3)),),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      Positioned(
        left: 318,
        child: Container(
        width: 55,
        height: 30,
        decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.only(topRight: Radius.circular(20), bottomLeft: Radius.circular(20))),
        child: Center(child: Text('New', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)),
      ))
      ],
      
    );
  }
}