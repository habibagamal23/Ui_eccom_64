part of 'theme_cubit.dart';

@immutable
sealed class ThemeState {
  bool isDark;
  ThemeData themeData;
  ThemeState(this.isDark, this.themeData);
}

final class ThemeInitial extends ThemeState {
  ThemeInitial():super(false ,ThemeData.light());
}

final class ThemeUpadted extends ThemeState {
  ThemeUpadted(super.isDark , super.themeData);
}