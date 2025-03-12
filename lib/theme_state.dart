part of 'theme_cubit.dart';

@immutable
sealed class ThemeState {

final ThemeData themeData;
final bool isDarkMode;
ThemeState(this.themeData, this.isDarkMode);
}

class ThemeInitial extends ThemeState {
  ThemeInitial() : super(ThemeData.light(), false);
}

class ThemeUpdated extends ThemeState {
  ThemeUpdated(super.themeData, super.isDarkMode);
}