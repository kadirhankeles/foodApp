import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class navBar extends StatefulWidget {
  const navBar({super.key});

  @override
  State<navBar> createState() => _navBarState();
}

class _navBarState extends State<navBar> {
  List<bool> isClicked = [
    false,false,false,false,
  ]; 
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 415,
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.only(left: 25, right: 25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(shape: BoxShape.circle, color: isClicked[0]? Colors.black : Colors.white),
              child: IconButton(onPressed: () {
                setState(() {
                  isClicked = [true, false,false,false];
                });
              }, icon: Image(image: AssetImage("assets/home.png"), color: isClicked[0]? Color(0xffFFFFFF): Color(0xff9B9B9B))),
            ),
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(shape: BoxShape.circle, color: isClicked[1]? Colors.black : Colors.white),
              child: IconButton(onPressed: () {
                setState(() {
                  isClicked = [false,true,false,false];
                });
              }, icon: Image(image: AssetImage("assets/heart.png"),color: isClicked[1]? Color(0xffFFFFFF): Color(0xff9B9B9B))),
            ),
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(shape: BoxShape.circle, color: isClicked[2]? Colors.black : Colors.white),
              child: IconButton(onPressed: () {
                setState(() {
                  isClicked = [false,false,true,false];
                });
              }, icon: Image(image: AssetImage("assets/sepet.png"),color: isClicked[2]? Color(0xffFFFFFF): Color(0xff9B9B9B)) ),
            ),
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(shape: BoxShape.circle, color: isClicked[3]? Colors.black : Colors.white),
              child: IconButton(onPressed: () {
                setState(() {
                  isClicked = [false,false,false, true];
                });
              }, icon: Image(image: AssetImage("assets/user.png"),color: isClicked[3]? Color(0xffFFFFFF): Color(0xff9B9B9B))),
            ),
            
          ],
        ),
      ),

    );
  }
}