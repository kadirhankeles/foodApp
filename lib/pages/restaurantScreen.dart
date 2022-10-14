import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:foodapplication/pages/homeScreen.dart';
import 'package:foodapplication/widgets/menu.dart';
import 'package:foodapplication/widgets/payment.dart';
import 'package:foodapplication/widgets/restaurantInfo.dart';
import 'package:foodapplication/widgets/selection.dart';

import '../widgets/topPhoto.dart';

class restaurantScreen extends StatefulWidget {
  const restaurantScreen({super.key});

  @override
  State<restaurantScreen> createState() => _restaurantScreenState();
}

class _restaurantScreenState extends State<restaurantScreen> {
  @override
  List<String> food = ["Burger", "Fries", "Coac", "Meals", "Lorem"];
  bool isClicked = false;
  List<String>foodImage = [
    "assets/food/Rectangle 37.png",
    "assets/food/Rectangle 33.png",
    "assets/food/Rectangle 29.png",
    "assets/food/Rectangle 23.png",
  ];
  List<String>foodName = [
    "Chicken Burger",
    "Potato Burger",
    "Supreme Burger",
    "Pizza Burger",
  ];
  List<double>foodStar = [
    4.5,4,4.3,4.2,
  ];
  List<String>foodDescription = [
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. ",
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. ",
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. ",
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. ",
  ];
  List<int> foodPrice = [
    7,8,9,10,
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: 900,
          child: Stack(
            children: [
              topPhoto(photoTop: 'assets/Rectangle 8 (1).png'),
              Positioned(
                  top: 240,
                  child: Container(
                    width: 395,
                    height: 670,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: [
                        restaurantInfo(
                            restaurantName: "Burger King",
                            restaurantStar: 4.5,
                            restaurantTime: "25-35 mins",
                            restaurantDistance: "8 km"),
                        Container(
                          height: 30,
                          width: 395,
                          padding: EdgeInsets.only(left: 20, right: 20),
                          margin: EdgeInsets.only(top: 10),
                          child: ListView.builder(
                            itemCount: food.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Container(
                                margin: EdgeInsets.only(right: 10),
                                child: GestureDetector(
                                    onTap: () {
                                      
                                    },
                                    child: selectionFood(food: food[index])),
                              );
                            },
                          ),
                        ),
                        Container(
                          width: 395,
                          height: 550,
                          color: Colors.white,
                          child: ListView.builder( physics: ScrollPhysics(),itemCount: foodImage.length,itemBuilder: (context, index) {
                            return Container(
                              margin: EdgeInsets.only(bottom: 20),
                              child: menuList(foodImage: foodImage[index], foodName: foodName[index], foodStar: foodStar[index], foodDescription: foodDescription[index], foodPrice: foodPrice[index]));
                          },),
                        ),
                        
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ),
      bottomNavigationBar: paymentBar(totalPrice: 20),
    );
  }
}
