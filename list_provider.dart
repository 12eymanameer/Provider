import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'notifyy.dart';

class ListColor extends StatelessWidget {
  final List<Colour> listcolor = [
    Colour(name: 'Terry', color: Colors.pinkAccent, icon: Icons.control_camera),
    Colour(name: 'Jasmine', color: Colors.greenAccent, icon: Icons.control_camera),
    Colour(name: 'Koh-e-noor', color: Colors.amberAccent, icon: Icons.control_camera),
    Colour(name: 'Boss', color: Colors.deepOrange, icon: Icons.control_camera),
    Colour(name: 'Mitra', color: Colors.green, icon: Icons.control_camera),
    Colour(name: 'Nofel', color: Colors.cyan, icon: Icons.control_camera),
    Colour(name: 'Ghost', color: Colors.purpleAccent, icon: Icons.control_camera),
    Colour(name: 'Witch', color: Colors.purple, icon: Icons.control_camera),
    Colour(name: 'Rose', color: Colors.pink, icon: Icons.control_camera),
    Colour(name: 'Tulip', color: Colors.amber, icon: Icons.control_camera),
    Colour(name: 'Snow Flake', color: Colors.blue, icon: Icons.control_camera),
    Colour(name: 'Cherry Blossom', color: Colors.teal, icon: Icons.control_camera),
    Colour(name: 'Nature', color: Colors.brown, icon: Icons.control_camera),
    Colour(name: 'Moon', color: Colors.lightGreen, icon: Icons.control_camera),
    Colour(name: 'Galaxy', color: Colors.red, icon: Icons.control_camera),
    Colour(name: 'Jalebi', color: Colors.black, icon: Icons.control_camera),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listcolor.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Icon(
            listcolor[index].icon,
            color: listcolor[index].color,
          ),
          title: Text(listcolor[index].name),
          trailing: Consumer<Notifyy>(
            builder: (context, notifyy, child) {
              return TextButton(
                onPressed: () {
                  notifyy.togglePrice(index);
                },
                child: Icon(
                  notifyy.isSelected(index) ? Icons.remove : Icons.add_box_outlined,
                  color: Colors.black26,
                ),
              );
            },
          ),
        );
      },
    );
  }
}

class Colour {
  final String name;
  final Color color;
  final IconData icon; // Use IconData for the icon property

  Colour({required this.name, required this.color, required this.icon});
}
