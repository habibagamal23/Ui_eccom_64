import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../core/theme/Theme.dart';

part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(ThemeInitial());

  void Toggle() {
    var isdark = !state.isDark;
    ThemeData themeData = isdark ? ThemeApp.DarkTheme : ThemeApp.lightTheme;
    emit(ThemeUpadted(isdark, themeData));
  }
}
