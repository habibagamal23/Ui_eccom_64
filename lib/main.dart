import 'package:ecommerce_64/logic/themecubit/theme_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'screens/Homescreen.dart';

void main() {
  runApp(
    BlocProvider(create: (_)=> ThemeCubit(), child:  MyApp())
     );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit , ThemeState>(builder: (context , state){
      return    MaterialApp(
        home: HomeScreen(),
        debugShowCheckedModeBanner: false,
        theme: state.themeData
      );
    });
  }
}
