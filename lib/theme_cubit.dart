import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(ThemeInitial());

  void toggleTheme() {
    final isDark = !state.isDarkMode;
    ThemeData themeData = isDark ? ThemeData.dark() : ThemeData.light();
    emit(ThemeUpdated(themeData, isDark));
  }
}
