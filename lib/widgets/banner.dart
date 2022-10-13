import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class banner extends StatelessWidget {
  const banner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10),
      height: 158,
      width: 358,
      decoration: BoxDecoration(
          color: Colors.amber,
          image: DecorationImage(image: AssetImage("assets/banner.png")),
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
              margin: EdgeInsets.only(left: 40, top: 10),
              child: Text(
                'Get Special Discount',
                style: TextStyle(color: Color(0xff9B9B9B), fontSize: 17),
              )),
          Container(
            margin: EdgeInsets.only(top: 15, left: 40),
            child: Text(
              'up to 75%',
              style: TextStyle(fontSize: 35, color: Colors.white),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 15, right: 160),
            child: TextButton(onPressed: () {
              
            }, child: Container(
              decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(5)),
              width: 116,
              height: 25,
              child: Center(child: Text("Claim Voucher", style: TextStyle(color: Colors.black),)))),
          )
        ],
      ),
    );
  }
}
