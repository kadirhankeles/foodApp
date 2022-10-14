import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class menuList extends StatefulWidget {
  final String foodImage;
  final String foodName;
  final double foodStar;
  final String foodDescription;
  final int foodPrice;
  
  menuList({super.key, required this.foodImage, required this.foodName, required this.foodStar, required this.foodDescription, required this.foodPrice});

  @override
  State<menuList> createState() => _menuListState();
}

class _menuListState extends State<menuList> {
  int adet=4;
  List<bool> isClicked=[false,false];
  @override
  Widget build(BuildContext context) {
    
    return Padding(
      padding: const EdgeInsets.only(left: 20,right: 20),
      child: Container(
        height: 97,
        width: 360,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0.0, 0.0),
              blurRadius: 5.0,
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
              width: 97,
              height: 97,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), image: DecorationImage(image: AssetImage("${widget.foodImage}"),fit: BoxFit.cover)),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(children: [
                  SizedBox(width: 15,),
                  Text('${widget.foodName}',style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
                  SizedBox(width: 15,),
                  Icon(Icons.star, color: Color(0xffFFD600), size: 19,),
                  SizedBox(width: 5,),
                  Text('${widget.foodStar}',style: TextStyle(color: Color(0xffB3B3B3)),)
                ],),
                SizedBox(width: 15,),
                Container(
                  
                  margin: EdgeInsets.only(left: 15,top: 5),
                  width: 165,
                  height: 30,
                  child: Text('${widget.foodDescription}',style: TextStyle(color: Color(0xffB3B3B3), fontSize: 12),) ,
                ),
                SizedBox(height: 10,),
                Container(
                  margin: EdgeInsets.only(left: 15),
                  child: Text(r"$ "'${widget.foodPrice}', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),))
              ],
            ),
            Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(color:isClicked[0]?Colors.black:Colors.white, boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0.0, 0.0),
              blurRadius: 1.0,
            ),
          ],),
          child: IconButton(onPressed: () {
            setState(() {
              isClicked[0]=true;
              isClicked[1]=false;
              adet==0?0:adet--;
            });
          }, icon: Icon(Icons.remove), padding: EdgeInsets.zero, iconSize: 15, color: isClicked[0]?Colors.white: Colors.black,),
            ),
            SizedBox(width: 5,),
            Text(adet.toString()),
            SizedBox(width: 5,),
            Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(color: isClicked[1]?Colors.black:Colors.white, boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0.0, 0.0),
              blurRadius: 1.0,
            ),
          ],),
          child: IconButton(onPressed: () {
            setState(() {
              adet++;
              isClicked[1]=true;
              isClicked[0]=false;
            });
          }, icon: Icon(Icons.add), padding: EdgeInsets.zero, iconSize: 15, color: isClicked[1]?Colors.white: Colors.black,),
            ),
          ],
        ),
      ),
    );
  }
}
