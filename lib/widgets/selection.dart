import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class selectionFood extends StatefulWidget {
  final String food;
  
  const selectionFood({super.key, required this.food});

  @override
  State<selectionFood> createState() => _selectionFoodState();
}

class _selectionFoodState extends State<selectionFood> {
bool isClicked = false;
int clickCount =0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 82,
      decoration: BoxDecoration(color: isClicked==true?Colors.black :Colors.white, borderRadius: BorderRadius.circular(5),border: Border.all(color: Colors.black)),
      child: Center(child: 
      TextButton(
        style: TextButton.styleFrom(padding: EdgeInsets.zero),
        onPressed: () {
          setState(() {
            clickCount++;
            if(clickCount%2!=0){
              isClicked = true;
            }else{isClicked=false;}
          });
        
        print(isClicked);
      }, child: Text('${widget.food}',style: TextStyle(color: isClicked?Colors.white:Colors.black),))
      
      ),
    );
  }
}