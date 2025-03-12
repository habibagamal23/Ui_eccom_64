import 'package:ecommerce_64/theme_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import 'counter_cubit.dart';

void main() {
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => CounterCubit()),
        BlocProvider(create: (context) => ThemeCubit()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeState>(
      builder: (context, state) {
        return MaterialApp(
          title: 'Theme Switcher',
          theme: state.themeData,
          home: HomeScreen(),
        );
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Counter & Theme Switcher")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Counter Section
          BlocBuilder<CounterCubit, CounterState>(
            builder: (context, state) {
              return Text(
                "Counter: ${state.count}",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              );
            },
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FloatingActionButton(
                onPressed: () => context.read<CounterCubit>().increment(),
                child: Icon(Icons.add),
              ),
              SizedBox(width: 20),
              FloatingActionButton(
                onPressed: () => context.read<CounterCubit>().decrement(),
                child: Icon(Icons.remove),
              ),
            ],
          ),
          SizedBox(height: 40),

          BlocBuilder<ThemeCubit, ThemeState>(
            builder: (context, state) {
              return SwitchListTile(
                title: Text("Dark Mode"),
                value: state.isDarkMode,
                onChanged: (value) => context.read<ThemeCubit>().toggleTheme(),
              );
            },
          ),
        ],
      ),
    );
  }
}
