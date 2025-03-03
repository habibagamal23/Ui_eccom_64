import 'package:ecommerce_64/data/sharedprafarnce.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  var userName = "Guest";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome $userName"),
        centerTitle: true,
      ),
      body: Text("Home Screen"),
    );
  }
}
