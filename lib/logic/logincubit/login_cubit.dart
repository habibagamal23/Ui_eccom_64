import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());



  void updateData(String username, String budget) {
    double? parsedBudget = double.tryParse(budget);
    emit(LoginUpdated(username, parsedBudget ?? 0, state.imagePath));
  }

  void updateImage(String imagePath) {
    emit(LoginUpdated(state.username, state.budget, imagePath));
  }

  void login() {
    if (state.username.isEmpty || state.budget <= 0) {
      emit(LoginError("Please enter a valid username and budget"));
      return;
    }
    emit(LoginSuccess("Login Successful! Welcome, ${state.username}"));
  }
}

