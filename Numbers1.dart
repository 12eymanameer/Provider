import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'notifyy.dart'; // Ensure the correct path
import 'Numbers2.dart'; // Ensure the correct path

class Numbers1 extends StatefulWidget {
  @override
  _Numbers1State createState() => _Numbers1State();
}

class _Numbers1State extends State<Numbers1> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Notifyy>(
      builder: (context, numberProvider, child) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink[200],
          iconTheme: IconThemeData(color: Colors.white),
          actions: [
            IconButton(
              icon: Icon(Icons.arrow_forward),
              onPressed: () {
                Get.to(() => Numbers2(numbers: numberProvider.numbers));
              },
            ),
          ],
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage('https://i.pinimg.com/564x/91/3c/3f/913c3f418bd459658f8c7cd47528d767.jpg'),
            fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                child: Text(
                  numberProvider.numbers.isNotEmpty
                      ? numberProvider.numbers.last.toString()
                      : 'No numbers',
                  style: GoogleFonts.cagliostro(
                    fontSize: 50,
                    color: Colors.pink[400],
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: numberProvider.numbers.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(
                        numberProvider.numbers[index].toString(),
                        style: GoogleFonts.cagliostro(
                          fontSize: 30,
                          color: Colors.pink[300],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Increment the numbers
            numberProvider.add_num();
          },
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
          backgroundColor: Colors.pink[200],
        ),
      ),
    );
  }
}
