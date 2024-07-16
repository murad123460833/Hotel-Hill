


import 'package:flutter/material.dart';

import '../model/bar_foodList.dart';

class Provider2nd extends ChangeNotifier {
  List<int> _vlb = [];

  List<int> get vlb => _vlb;
  List<int> _totalb = [];

  List<int> get totalb => _totalb;

  void ad(int val) {
    _vlb.add(val);
    myb.add(0);
    print(myb);
    notifyListeners();
  }

  void rm(int val) {
    _vlb.remove(val);
    myb.remove(0);
    print(myb);
    notifyListeners();
  }


  void toal(int val){
    _totalb.add(bar_foodList[val].price);
    notifyListeners();

  }


  int to = 0;
  List myb = [];
  void inceiseCont(int index,int price){
    myb[index] = myb[index]+1;
    to = to+price;
    print(to);
    notifyListeners();
  }

  void decriseCont(int index,int price){
    if(myb[index]>=1){
      myb[index] = myb[index]-1;
      to = to-price;
      print(to);
    }
    notifyListeners();
  }

}