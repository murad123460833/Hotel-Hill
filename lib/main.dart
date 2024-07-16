import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hill_site_inn/provider/provider1.dart';
import 'package:hill_site_inn/provider/provider2nd.dart';
import 'package:hill_site_inn/provider/provider_for_room.dart';
import 'package:hill_site_inn/ui/lodding.dart';
import 'package:flutter/semantics.dart';
import 'package:provider/provider.dart';

void main(){
  //1 //upora ja statas bar thaka tar color mosar jonno use hoyasa //
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    )
  );
  //1
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) =>Provider1st()),
        ChangeNotifierProvider(create: (_) =>Provider2nd()),
        ChangeNotifierProvider(create: (_) =>Provider_for_room()),


      ],
      child:MaterialApp(
        debugShowCheckedModeBanner: false,
        home: loading(),
      ),
    ),

  );
}