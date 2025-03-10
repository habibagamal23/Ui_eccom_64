
import 'package:flutter/material.dart';

class ConterProvider extends ChangeNotifier{

  var counter =0 ;
  void addCounter(){
    counter++;
    notifyListeners();
}



}