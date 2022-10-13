import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class categories extends StatelessWidget {
  final String categoriesImage;
  final String categoriesName;
  categories(
      {super.key, required this.categoriesImage, required this.categoriesName});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 67,
          width: 67,
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(categoriesImage),fit: BoxFit.cover),
              shape: BoxShape.circle,
              
              ),
        ),
        SizedBox(height: 7,),
        Text('$categoriesName')
      ],
    );
  }
}
