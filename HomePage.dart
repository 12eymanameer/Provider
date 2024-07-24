import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'notifyy.dart';
import 'Numbers1.dart';

class TotalPriceBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        iconTheme: IconThemeData(color: Colors.white),
        actions: [
          IconButton(
            icon: Icon(Icons.arrow_forward),
            onPressed: () {
              Get.to(() => Numbers1());
            },
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage('https://i.pinimg.com/originals/ef/3d/6e/ef3d6e995adb94af6aaed49548c66147.gif'),
            fit: BoxFit.cover,
          ),
        ),
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Consumer<Notifyy>(
            builder: (context, notifyy, child) {
              return Text(
                'Total Price: \$${notifyy.totalPrice}',
                style: TextStyle(
                  color: Colors.cyan,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
