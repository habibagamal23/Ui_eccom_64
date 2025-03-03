import 'package:ecommerce_64/data/sharedprafarnce.dart';
import 'package:ecommerce_64/screens/homeScreen.dart';
import 'package:flutter/material.dart';

class Loginscreen extends StatelessWidget {
  Loginscreen({super.key});

  var contallerEmail = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              controller: contallerEmail,
              decoration: InputDecoration(
                labelText: 'Username',
                border: OutlineInputBorder(),
              ),
            ),
            ElevatedButton(
                onPressed: () async {
                  await LocalDb.setIsLogin(true);
                  await LocalDb.saveUser(contallerEmail.text);
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => Homescreen()));
                },
                child: Text("Login"))
          ],
        ),
      ),
    );
  }
}
