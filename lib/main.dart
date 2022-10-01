import 'dart:io';

import 'package:flutter/material.dart';
import 'package:practice/view/pages/splash.dart';
import 'package:practice/view_model/database/dio_helper.dart';
import 'app_root.dart';

void main() async {
  HttpOverrides.global = MyHttpOverrides();
  AppRoute appRoute = AppRoute();
  await DioHelper.init();
  runApp(MaterialApp( home: Splash(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.deepOrange
    ),
    //onGenerateRoute: appRoute.generateRoot,
  ));
}

class MyHttpOverrides extends HttpOverrides{
  @override
  HttpClient createHttpClient(SecurityContext? context){
    return super.createHttpClient(context)
      ..badCertificateCallback = (X509Certificate cert, String host, int port)=> true;
  }
}