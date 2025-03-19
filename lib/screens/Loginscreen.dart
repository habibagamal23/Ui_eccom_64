import 'package:ecommerce_64/screens/widgets/ChooseImage.dart';
import 'package:ecommerce_64/screens/widgets/inputfiled.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../logic/logincubit/login_cubit.dart';
import 'Homescreen.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  final usernameController = TextEditingController();
  final budgetController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Login")),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: BlocListener<LoginCubit, LoginState>(
            listener: (context, state) {
              if (state is LoginError) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(state.error)),
                );
              } else if (state is LoginSuccess) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(state.message)),
                );

                Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
              }
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

    BlocBuilder<LoginCubit, LoginState>(
    builder: (context, state) {
    return ImagePickerWidget();
    }),
                const SizedBox(height: 20),
                CustomTextField(
                  label: "Username",
                  controller: usernameController,
                  keyboardType: TextInputType.text,
                ),
                CustomTextField(
                  label: "Budget",
                  controller: budgetController,
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    final username = usernameController.text;
                    final budget = budgetController.text;

                    context.read<LoginCubit>().updateData(username, budget);
                    context.read<LoginCubit>().login();
                  },
                  child: const Text("Login"),
                ),
              ],
            ),
          ),
        ),
    );
  }
}
