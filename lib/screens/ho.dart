// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import '../cubit/home_cubit/home_cubit.dart';
// import '../cubit/logincubit/login_cubit.dart';
// import '../widgets/transaction_list.dart';
//
// class HomeScreen extends StatelessWidget {
//   const HomeScreen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     final loginState = context.read<LoginCubit>().state;
//
//     return BlocProvider(
//       create: (context) => HomeCubit(loginState.budget),
//       child: Scaffold(
//         appBar: AppBar(
//           title:
//         ),
//         body: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               BlocBuilder<HomeCubit, HomeState>(
//                 builder: (context, state) {
//                   double remainingBudget = state.budget - state.totalSpent;
//                   return Column(
//                     children: [
//                       Container(
//                         padding: const EdgeInsets.all(16),
//                         decoration: BoxDecoration(
//                           color: Colors.blueAccent,
//                           borderRadius: BorderRadius.circular(10),
//                         ),
//                         child: Column(
//                           children: [
//                             Text("Budget: \$${state.budget}", style: TextStyle(fontSize: 18, color: Colors.white)),
//                             Text("Total Spent: \$${state.totalSpent}", style: TextStyle(fontSize: 18, color: Colors.white)),
//                             Slider(
//                               value: state.totalSpent.toDouble(),
//                               min: 0,
//                               max: state.budget,
//                               onChanged: (_) {},
//                               activeColor: Colors.white,
//                             ),
//                           ],
//                         ),
//                       ),
//                       const SizedBox(height: 20),
//                       TransactionList(),
//                     ],
//                   );
//                 },
//               ),
//             ],
//           ),
//         ),
//
//       ),
//     );
//   }
//
//
// }
