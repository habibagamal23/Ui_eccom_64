import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'counterProvider.dart';

class ConterScreen extends StatelessWidget {
  const ConterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint("build");
    return Scaffold(
      body: Column(
        children: [
          Consumer<ConterProvider>(builder: (context, provider, child) {
            debugPrint("consumer");
            return Text("conter ${provider.counter}");
          }),
          ElevatedButton(
              onPressed: Provider.of<ConterProvider>(context, listen: false)
                  .addCounter,
              child: Text("add")),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SecScreen()));
              },
              child: Text("go to sec screen")),
        ],
      ),
    );
  }
}

class SecScreen extends StatelessWidget {
  const SecScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Text(
            "conter ${Provider.of<ConterProvider>(context, listen: true).counter}"),
      ),
    );
  }
}
