import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:foodapplication/widgets/banner.dart';
import 'package:foodapplication/widgets/categories.dart';
import 'package:foodapplication/widgets/navbar.dart';
import 'package:foodapplication/widgets/restaurant.dart';
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
    "assets/homeScreen/pizza1.jpg",
    "assets/homeScreen/pancake.jpg",
    "assets/homeScreen/sandvic.jpg",
    "assets/homeScreen/dondurma.jpg",
    "assets/homeScreen/noodle.jpg",
  ];
  final List<String> categoriesName = [
    "Pizza",
    "Pan-cake",
    "Sandwich",
    "Ice-cream",
    "Noodle",
  ];

  final List<String> restaurantImage = [
    "assets/homeScreen/Rectangle 8.png",
    "assets/homeScreen/Rectangle 14 (2).png",
    "assets/homeScreen/Rectangle 17.png",
  ];
  final List<String> restaurantName = [
    "Burger King",
    "Pizzania",
    "Pancake",
  ];
  final List<double> restaurantStar = [
    4.5,
    4.6,
    4.2,
  ];
  final List<String> restaurantTime = [
    "25-35 mins",
    "20-25 mins",
    "25-35 mins",
  ];
  final List<String> restaurantDistance = [
    "8 km",
    "7 km",
    "8 km",
  ];
  final List<bool> isNew = [
    true,
    false,
    true,
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
                    child: categories(
                        categoriesImage: categoriesImage[index],
                        categoriesName: categoriesName[index]),
                  );
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Restaurant',
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
            Container(
              height: 380,
              width: double.infinity,
              child: ListView.builder(
                physics: ScrollPhysics(),
                itemCount: restaurantImage.length,
                itemBuilder: (context, index) {
                  return Container(
                      margin: index > 0
                          ? EdgeInsets.only(top: 20)
                          : EdgeInsets.only(top: 0),
                      child: restaurant(
                          restaurantImage: restaurantImage[index],
                          restaurantName: restaurantName[index],
                          restaurantStar: restaurantStar[index],
                          restaurantTime: restaurantTime[index],
                          restaurantDistance: restaurantDistance[index],
                          isNew: isNew[index]));
                },
              ),
            ),
            
          ],
        ),
      ),
      bottomNavigationBar: navBar(),
    );
  }
}
