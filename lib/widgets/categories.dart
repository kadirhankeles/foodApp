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
          height: 69,
          width: 69,
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(categoriesImage)),
              shape: BoxShape.circle,
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(0.0, 0.0),
                  blurRadius: 10.0,
                ),
              ],
              ),
        ),
        SizedBox(
          height: 10,
        ),
        Text('$categoriesName')
      ],
    );
  }
}
