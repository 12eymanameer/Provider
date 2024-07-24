import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'notifyy.dart'; // Ensure the correct path

class Numbers2 extends StatefulWidget {
  final List<int> numbers;

  const Numbers2({Key? key, required this.numbers}) : super(key: key);

  @override
  _Numbers2State createState() => _Numbers2State();
}

class _Numbers2State extends State<Numbers2> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Notifyy>(
      builder: (context, numberProvider, child) =>Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[900],
        iconTheme: IconThemeData(color: Colors.purple[200]),
      ),
      body: Container( decoration: BoxDecoration(
      image: DecorationImage(
      image: NetworkImage('https://i.pinimg.com/originals/dd/4b/21/dd4b21dad86f6fdbf4235d3217895148.gif'),
      fit: BoxFit.cover,
    ),),
    child:Column(
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
                  color: Colors.purple[200],
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
                        color: Colors.purple[900],
                      ),
                    ),
                  );
                },
              ),
            ),

          ],
    )
        ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          numberProvider.add_num();
        },
        child: Icon(
          Icons.add,
          color: Colors.purple[200],
          size: 30,
        ),
        backgroundColor: Colors.deepPurple[500],
      ),
      ),
    );
  }
}
