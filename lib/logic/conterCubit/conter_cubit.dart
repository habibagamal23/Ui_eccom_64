import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'conter_state.dart';

class ConterCubit extends Cubit<ConterState> {
  ConterCubit() : super(ConterInitial());

  void increment(){
    emit(CounterUpdate(state.counter+1));
  }

  void decrement(){
    emit(CounterUpdate(state.counter-1));
  }


}

/*
ana hshr7 m3ahom awl haga structure
1- m7tzgz z7der sora lihom
2- them by cubit
3-imagebicker
4- textfeild

eli b3d kda  model , cubit , home screen , go router f l akher
 */
