import 'package:ecommerce_64/logic/themecubit/theme_cubit.dart';
import 'package:ecommerce_64/screens/Loginscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'logic/logincubit/login_cubit.dart';
import 'screens/Homescreen.dart';

void main() {
  runApp(MultiBlocProvider(providers: [
    BlocProvider(create: (context) => LoginCubit()),
    BlocProvider(create: (_) => ThemeCubit()),
  ], child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeState>(builder: (context, state) {
      return MaterialApp(
          home: LoginScreen(),
          debugShowCheckedModeBanner: false,
          theme: state.themeData);
    });
  }
}
