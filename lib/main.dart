import 'package:ecommerce_64/screens/LoginScreen.dart';
import 'package:ecommerce_64/screens/homeNotes.dart';
import 'package:ecommerce_64/screens/homeScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'data/sharedprafarnce.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await LocalDb.StartSherd();
  checkIsLogin();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: HomeNotes());
      },
    );
  }
}

bool isLogged = false;
void checkIsLogin() async {
  bool? isture = await LocalDb.getIsLogin();
  if (isture != null) {
    isLogged = true;
  } else {
    isLogged = false;
  }
}
