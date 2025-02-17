import 'package:flutter/material.dart';

class Screndscreen extends StatelessWidget {
   var name;
   var title;
   Screndscreen({super.key , required this.name , required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(name),
          Text(title)
        ],
      )
    );
  }
}
