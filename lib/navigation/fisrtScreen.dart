import 'package:ecommerce_64/navigation/screndScreen.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var name = "habiba";
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text(name),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Screndscreen(
                                name: "dart",
                            title: "flutter",
                              )));
                },
                child: Text("go to next screen")),
          ],
        ),
      ),
    );
  }
}
