import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  var formkey = GlobalKey<FormState>();

  var emailconttorel = TextEditingController();
  var passconttorel = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/logo.jpg",
            height: 200,
            width: 200,
          ),
          Form(
              key: formkey,
              child: Column(
                children: [
                  TextFormField(
                    controller: emailconttorel,
                    decoration: InputDecoration(
                        hintText: "email",
                        label: Text("email"),
                        border: OutlineInputBorder()),
                    validator: (value) {
                      if (value!.isEmpty || value == null) {
                        return "enter your email";
                      } else if (!value.contains("@")) {
                        return "invalid your email";
                      } else {
                        return null;
                      }
                    },
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "pass",
                        label: Text("pass"),
                        border: OutlineInputBorder()),
                    validator: (value) {
                      if (value!.isEmpty || value == null) {
                        return "enter your pass";
                      } else if (value.length < 6) {
                        return "invalid your pass";
                      } else {
                        return null;
                      }
                    },
                    obscureText: true,
                    controller: passconttorel,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        if (formkey.currentState!.validate()) {
                          print("login success");
                          print(emailconttorel.text);
                        }
                      },
                      child: Text("login"))
                ],
              ))
        ],
      )),
    );
  }
}
