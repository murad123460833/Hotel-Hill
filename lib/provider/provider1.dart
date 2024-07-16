
import 'package:hill_site_inn/model/rs_foodList.dart';

import 'package:flutter/material.dart';

class Provider1st extends ChangeNotifier {
  List<int> _vl = [];

  List<int> get vl => _vl;
  List<int> _total = [];

  List<int> get total => _total;

  void ad(int val) {
    _vl.add(val);
    my.add(0);
    print(my);
    notifyListeners();
  }

  void rm(int val) {
    _vl.remove(val);
    my.remove(0);
    print(my);
    notifyListeners();
  }


  void toal(int val){
    _total.add(rs_foodList[val].price);
    notifyListeners();

  }


  int to = 0;
  List my = [];
  void inceiseCont(int index,int price){
    my[index] = my[index]+1;
    to = to+price;
    print(to);
    notifyListeners();
  }

  void decriseCont(int index,int price){
    if(my[index]>=1){
      my[index] = my[index]-1;
      to = to-price;
      print(to);
    }
    notifyListeners();
  }

}