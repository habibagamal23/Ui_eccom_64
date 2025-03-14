part of 'conter_cubit.dart';

@immutable
sealed class ConterState {
  int counter ;
  ConterState(this.counter);
}

final class ConterInitial extends ConterState {
  ConterInitial(): super(0);
}


final class CounterUpdate extends ConterState{
  CounterUpdate(super.counter);
}




