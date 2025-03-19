part of 'login_cubit.dart';

@immutable
sealed class LoginState {

  final String username;
  final double budget;
  final String? imagePath;

const LoginState(this.username, this.budget, this.imagePath);
}

class LoginInitial extends LoginState {
LoginInitial() : super("", 0, null);
}

class LoginUpdated extends LoginState {
const LoginUpdated(String username, double budget, String? imagePath)
    : super(username, budget, imagePath);
}

class LoginSuccess extends LoginState {
final String message;
const LoginSuccess(this.message) : super("", 0, null);
}

class LoginError extends LoginState {
final String error;
const LoginError(this.error) : super("", 0, null);
}
