import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../logic/themecubit/theme_cubit.dart';

class Switchbutton extends StatelessWidget {
  const Switchbutton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeState>(
      builder: (context, state) {
        return SwitchListTile(
          value: state.isDark,
          onChanged: (value) => context.read<ThemeCubit>().Toggle(),
          title: const Text("Switch Theme"),
        );
      },
    );
  }
}
