import 'package:flutter/material.dart';

import 'Ui_ecom/loginscreen.dart';
import 'Ui_ecom/splashScreen.dart';
import 'Ui_ecom/welcomserrn.dart';
import 'navigation/foodPruduct.dart';
import 'navigation/productsScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/welcome": (context) => WelcomeScreen(),
        "/login": (context) => LoginScreen()
        ,
        "/splash": (context) => Foodpruduct()
      },
      initialRoute: "/splash",
    );
  }
}
