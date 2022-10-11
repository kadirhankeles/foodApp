import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:foodapplication/widgets/loginButton.dart';

class LoginScreenPage extends StatefulWidget {
  const LoginScreenPage({super.key});

  @override
  State<LoginScreenPage> createState() => _LoginScreenPageState();
}

class _LoginScreenPageState extends State<LoginScreenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff010E16),
      body: Column(
        children: [
          Image.asset("assets/arkaplan.png"),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left: 18),
            child: Text('Lorem ipsum \ndolor sit amet,\nconsectetur adipiscing elit.  ', style: TextStyle(color: Colors.white, fontSize: 38, fontWeight: FontWeight.bold),),
          ),SizedBox(height: 60,),
          loginButton(buttonColor:Colors.white,buttonText: "Login"),
          SizedBox(height: 30,),
          Text('Don’t have an account? ', style: TextStyle(color: Color(0xff375268), ),),
          Text('Create account', style: TextStyle(color: Color(0xffD9D9D9)),)
        ],
      ),
      
      
    );
  }
}