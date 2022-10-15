import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class topPhoto extends StatefulWidget {
  final String photoTop;
  topPhoto({super.key, required this.photoTop, });

  @override
  State<topPhoto> createState() => _topPhotoState();
}

class _topPhotoState extends State<topPhoto> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 416,
      height: 280,
      decoration: BoxDecoration(color: Colors.red,image: DecorationImage(image: AssetImage("${widget.photoTop}"),fit: BoxFit.cover)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: EdgeInsets.only(top: 40, left: 25),
            width: 31,
            height: 31,
            decoration: BoxDecoration(color: Color(0xffD9D9D9).withOpacity(0.5), shape: BoxShape.circle),
            child: IconButton(
              padding: EdgeInsets.zero,
              onPressed: () {
              Navigator.of(context).pop();
            }, icon: Icon(Icons.keyboard_arrow_left, color: Colors.white,)),
          ),
          Container(
            margin: EdgeInsets.only(top: 40,right: 25),
            width: 31,
            height: 31,
            decoration: BoxDecoration(color: Color(0xffD9D9D9).withOpacity(0.5), shape: BoxShape.circle),
            child: IconButton(
              padding: EdgeInsets.zero,
              onPressed: () {
              
            }, icon: Image(image: AssetImage("assets/heart.png"),width: 22,color: Colors.white,)),
          ),
        ],
      ),
    );
  }
}