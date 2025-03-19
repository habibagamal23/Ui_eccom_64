part of 'home_cubit.dart';

@immutable
sealed class HomeState {
final int totalSpent;
final List<TransactionModel> transactions;

const HomeState( this.totalSpent, this.transactions);
}

class HomeInitial extends HomeState {
HomeInitial() : super( 0, []);
}

class HomeUpdated extends HomeState {
const HomeUpdated( int totalSpent, List<TransactionModel> transactions)
    : super( totalSpent, transactions);
}