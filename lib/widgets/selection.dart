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
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 82,
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(5),border: Border.all(color: Colors.black)),
      child: Center(child: Text('${widget.food}')),
    );
  }
}