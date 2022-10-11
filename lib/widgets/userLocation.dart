import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class userLocation extends StatelessWidget {
  final String isim;
  final String konum;
  userLocation({super.key, required this.isim, required this.konum});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Hi ${isim}!', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              Row(children: [
                Icon(Icons.location_on_outlined, size: 13, color: Color(0xff035176),),
                Text('Location, ${konum}', style: TextStyle(color: Color(0xffB3B3B3), fontSize: 12),),
                Icon(Icons.keyboard_arrow_down_rounded, color: Color(0xff035176),size: 13,)
              ],)
            ],
          ),
          
          Image.asset("assets/bildirim.png"),
        ],
      ),
    );
  }
}