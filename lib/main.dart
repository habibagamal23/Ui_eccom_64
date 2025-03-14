import 'package:ecommerce_64/conter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(BlocProvider(
      create: (_) => ConterCubit(),
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Counter")),
        body: Column(
          children: [
            BlocBuilder<ConterCubit, ConterState>(
                builder: (context, state) {
                  return Text("conter ${state.counter}");
                }
            ),
            ElevatedButton(onPressed: () {
              context.read<ConterCubit>().increment();
            }
                , child: Text("+")),

            ElevatedButton(onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SecScreen()));
            }, child: Text("go"))
          ],
        )
    );
  }
}


class SecScreen extends StatelessWidget {
  const SecScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          BlocBuilder<ConterCubit, ConterState>(
            builder: (context, state) {
              return Text("conter ${state.counter}");
            },
          )
        ],
      ),
    );
  }
}
