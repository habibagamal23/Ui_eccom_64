import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/tarns.dart';
import '../../logic/homecubit/home_cubit.dart';


class TransactionList extends StatelessWidget {
  const TransactionList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        if (state.transactions.isEmpty) {
          return const Center(child: Text("No transactions yet!"));
        }
        return Expanded(
          child: ListView.builder(
            itemCount: state.transactions.length,
            itemBuilder: (context, index) {
              TransactionModel transaction = state.transactions[index];
              return ListTile(
                title: Text(transaction.category),
                trailing: Text("\$${transaction.amount}"),
              );
            },
          ),
        );
      },
    );
  }
}
