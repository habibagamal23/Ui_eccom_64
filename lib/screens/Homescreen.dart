import 'package:ecommerce_64/logic/themecubit/theme_cubit.dart';
import 'package:ecommerce_64/screens/widgets/homeBody.dart';
import 'package:ecommerce_64/screens/widgets/switchbutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        centerTitle: true,
        title: Text("home screen"),
        actions: [
          Switchbutton()
        ],
      ),
      body:Homebody()
    );
  }
}
