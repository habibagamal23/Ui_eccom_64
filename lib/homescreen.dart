

import 'package:ecommerce_64/profilescreen.dart';
import 'package:ecommerce_64/searchscreen.dart';
import 'package:flutter/material.dart';

import 'cartScreen.dart';
import 'homeWidget.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int selectedIndex = 0;
  List<Widget>screens = [
    homewideget(),
    SearchScreen(),
    CartScreen(),
    ProfileScreen()
  ];

  void changeScreen(int index){
    setState(() {
      selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          currentIndex: selectedIndex,
          onTap: changeScreen,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home,color:selectedIndex==0? Colors.purple:Colors.grey,),label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.search,color: selectedIndex==1? Colors.purple:Colors.grey,),label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.add_shopping_cart,color: selectedIndex==2? Colors.purple:Colors.grey,),label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.person,color: selectedIndex==3? Colors.purple:Colors.grey,),label: ''),
          ]),
    );
  }
}
