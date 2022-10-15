import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:foodapplication/pages/homeScreen.dart';

class loginButton extends StatelessWidget {
  final String buttonText;
  final Color buttonColor;

  loginButton({super.key, required this.buttonText, required this.buttonColor,});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            height: 63,
            width: double.infinity,
            child: TextButton(
              onPressed: (() {
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>homeScreen()));
              }),
              child: Center(
                  child: Text(
                buttonText,
                style: TextStyle(color: buttonColor, fontSize: 29),
              )),
            ),
            margin: EdgeInsets.only(left: 18, right: 18),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xff010E16),
                border: Border.all(width: 1, color: Color(0xff314B61))),
          ),
      ],
    );
  }
}
