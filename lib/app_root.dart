import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practice/view/pages/login.dart';
import 'package:practice/view/pages/main_page.dart';
import 'package:practice/view_model/bloc/home_login_cubit.dart';
import '../../view_model/bloc/main_page_cubit.dart';
import 'constant/const.dart';

//rehan beh
class AppRoute {

  Route? generateRoot(RouteSettings value) {
    switch (value.name) {
      case loginRoute:
        {
          return MaterialPageRoute(
            builder: (_) => BlocProvider(
                create: (context) =>LoginCubit(), child:   Login()),
          );
        }

      case mainPageRoute:
        {
          return MaterialPageRoute(
            builder: (_) => BlocProvider(
                create: (context) => MainPageCubit(), child: MainPage()),
          );
        }
    }
    return null;
  }
}
//Navigator.pushNamed(context, MaterialPageRoute(builder: (_) => const Mainpage()));
