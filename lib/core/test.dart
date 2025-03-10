
import 'package:flutter/material.dart';

class Testt extends StatelessWidget {
  const Testt({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
      width: 200,
            height: 300,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Colors.white),
            ),
            padding: EdgeInsets.all(10.0),
            child: Text('Hello, World!'),
          ),
          Row (
            children: [
              Container(
          width:300 ,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(color: Colors.white),
                ),
                padding: EdgeInsets.all(10.0),
                child: Text('Red'),
              ),
              Container(
    width: 200,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.green,
                  border: Border.all(color: Colors.white),
    ) )],
          )
        ]
      ),
    );
  }
}
