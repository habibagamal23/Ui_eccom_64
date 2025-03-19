import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../data/tarns.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  void addTransaction(String category, int amount) {
      final newTransaction = TransactionModel(category: category, amount: amount);
      final updatedTransactions = state.transactions;
      updatedTransactions.add(newTransaction);
      final newTotal = state.totalSpent + amount;
      emit(HomeUpdated( newTotal, updatedTransactions));
    }

}
