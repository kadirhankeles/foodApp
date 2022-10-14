import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class paymentBar extends StatefulWidget {
   final int totalPrice;
   paymentBar({super.key, required this.totalPrice});

  @override
  State<paymentBar> createState() => _paymentBarState();
}

class _paymentBarState extends State<paymentBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right:20,bottom: 10),
      child: Container(
         height: 69,
         width: 360,
         padding: EdgeInsets.only(left: 20,right: 20),
         decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(20)),
         child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [TextButton(onPressed: () {
            
          }, child: Text('View Cart',style: TextStyle(fontSize: 19,color: Colors.white),)),
          Text(r"$"'${widget.totalPrice}',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 19),)
          ],
         ),

      ),
    );
  }
}