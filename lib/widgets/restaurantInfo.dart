import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class restaurantInfo extends StatelessWidget {
  final String restaurantName;
  final double restaurantStar;
  final String restaurantTime;
  final String restaurantDistance;
  restaurantInfo({super.key, required this.restaurantName, required this.restaurantStar, required this.restaurantTime, required this.restaurantDistance});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20,right: 20),
      child: Container(
        height: 60,
        width: double.infinity,
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("$restaurantName", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
            SizedBox(height: 10,),
            Row(
              children: [

                Icon(Icons.star, color: Color(0xffFFD600), size: 20,),
                SizedBox(width: 5,),
                Text('$restaurantStar', style: TextStyle(color: Color(0xffB3B3B3),fontSize: 15),),
                SizedBox(width: 20,),
                Icon(Icons.watch_later_outlined, size: 19, color: Color(0xff9B9B9B),),
                SizedBox(width: 5,),
                Text('$restaurantTime', style: TextStyle(color: Color(0xffB3B3B3)),),
                SizedBox(width: 20,),
                Icon(Icons.circle, size: 5, color: Color(0xffB3B3B3),),
                SizedBox(width: 5,),
                Text('$restaurantDistance', style: TextStyle(color: Color(0xffB3B3B3)),),
              ],
            ),
          ],
        ),
      ),
    );
  }
}