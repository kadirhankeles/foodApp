import 'package:flutter/material.dart';

class searchBar extends StatefulWidget {
  const searchBar({super.key});

  @override
  State<searchBar> createState() => _searchBarState();
}

class _searchBarState extends State<searchBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 290,
                height: 40,
                decoration: BoxDecoration(color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                  boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(0.0, 0.0),
                  blurRadius: 5,
                ),
              ],
                ),
                child: TextField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 10),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: const BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                      ),
                      hintText: "Search Your food or Restaurant",
                      hintStyle: TextStyle(color: Color(0xffCFCFCF), fontSize: 13),
                      prefixIcon: Icon(Icons.search)),
                ),
              ),
              SizedBox(width: 10,),
              Container(
                width: 50,
                height: 40,
                child: Image(image: AssetImage("assets/Filter.png")),
                decoration: BoxDecoration(color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                  boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(0.0, 0.0),
                  blurRadius: 5,
                ),
              ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
