import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hill_site_inn/ui/home.dart';
import 'package:hill_site_inn/ui/sinup_login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class loading extends StatefulWidget {
  const loading({Key? key}) : super(key: key);

  @override
  State<loading> createState() => _loadingState();
}

class _loadingState extends State<loading> {
  @override
  void initState(){

    super.initState();
    Motasim();

  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          height: 500,
          width: 500,
          child: Center(
            child: Image(image: AssetImage("assets/loding.gif")),
          ),

        ),
      ),
    );
  }

  void Motasim() async{
    SharedPreferences sp= await SharedPreferences.getInstance();

    var isLogin= sp.getBool("loginkey");

    Timer(Duration(seconds: 3), (){

      if(isLogin != null){
        if(isLogin){
          Navigator.pushReplacement(context,MaterialPageRoute
            (builder: (context)=>home()));
        }else{
          Navigator.pushReplacement(context,MaterialPageRoute
            (builder: (context)=>login()));
        }
      }else{
        Navigator.pushReplacement(context,MaterialPageRoute
          (builder: (context)=>login()));
      }

    }
    );


  }




}
