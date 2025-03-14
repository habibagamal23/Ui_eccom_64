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
