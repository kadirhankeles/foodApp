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
      body: Column(
        children: [
          Container(
            height: 63,
            width: 360,
            child: TextButton(onPressed: (() {
              
            }), child: Center(child: Text('Login', style: TextStyle(color: Color(0xffF5F5F5), fontSize: 29),)),),
            margin: EdgeInsets.only(left: 18, right: 18),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Color(0xff010E16), border: Border.all(width: 1 ,color: Color(0xff314B61))),
            
          ),
          SizedBox(height: 30,),
          Text('Don’t have an account? ', style: TextStyle(color: Color(0xff375268), fontSize: 14),),
          Text('Create Account', style: TextStyle(color: Colors.white),),
        ],
      ),
    );
  }
}