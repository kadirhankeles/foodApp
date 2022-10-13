import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:foodapplication/widgets/banner.dart';
import 'package:foodapplication/widgets/categories.dart';
import 'package:foodapplication/widgets/searchBar.dart';
import 'package:foodapplication/widgets/userLocation.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  @override
  final List<String> categoriesImage = [
    "assets/homeScreen/Ellipse 1.png",
    "assets/homeScreen/Ellipse 2.png",
    "assets/homeScreen/Ellipse 3.png",
    "assets/homeScreen/Ellipse 4.png",
    "assets/homeScreen/Ellipse 5.png",
  ];
  final List<String> categoriesName = [
    "Pizza",
    "Pan-cake",
    "Sandwich",
    "Ice-cream",
    "Noodle",
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          userLocation(isim: "Kadirhan", konum: "Istanbul"),
          SizedBox(
            height: 20,
          ),
          searchBar(),
          SizedBox(
            height: 20,
          ),
          banner(),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Categories',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                Text(
                  'Show all',
                  style: TextStyle(fontSize: 12, color: Color(0xff459FCA)),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: double.infinity,
            height: 100,
           
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categoriesImage.length,
              itemBuilder: (context, index) {
              return Container(
               
                width: 90,
                child: categories(categoriesImage: categoriesImage[index], categoriesName: categoriesName[index]),
              );
              },
            ),
          )
        ],
      ),
    );
  }
}
