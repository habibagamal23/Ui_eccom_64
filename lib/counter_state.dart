part of 'counter_cubit.dart';

@immutable
sealed class CounterState {

final int count;
CounterState(this.count);
}

class CounterInitial extends CounterState {
  CounterInitial() : super(0); // Default value is 0
}

class CounterUpdated extends CounterState {
  CounterUpdated(super.count);
}