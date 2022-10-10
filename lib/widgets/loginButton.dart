import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class loginButton extends StatelessWidget {
  const loginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 63,
        width: 360,
        
        child: Text('deneme'),
        margin: EdgeInsets.only(left: 18, right: 18),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Color(0xff010E16),),
      ),
    );
  }
}