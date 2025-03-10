import 'package:ecommerce_64/screens/conterScreen.dart';
import 'package:ecommerce_64/screens/counterProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => ConterProvider()),
        ],
        child: MaterialApp(
            debugShowCheckedModeBanner: false, home: ConterScreen()));
  }
}
