import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'HomePage.dart';
import 'notifyy.dart';
import 'list_provider.dart';


void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Notifyy()),

      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Provider Example',
            style: GoogleFonts.itim().copyWith(
              color: Colors.white,
              fontSize: 30.0,
            ),
          ),
          backgroundColor: Colors.cyan,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.shopping_cart, color: Colors.white),
              onPressed: () {
                Get.to(() => TotalPriceBar());
              },
            ),
          ],
        ),
        body: ListColor(),
      ),
    );
  }
}
