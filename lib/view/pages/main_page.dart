import 'dart:developer';

import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../view_model/bloc/main_page_cubit.dart';
import '../componants/google_nav.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // showTopSnackBar(context, '        Login Susses', '   Hello');

    return BlocProvider(
      create: (context) => MainPageCubit(),
      child: BlocBuilder<MainPageCubit, MainPageState>(
        builder: (context, state) {
          final homeCubit = context.read<MainPageCubit>();
          if (state is HomeState) {
            log('Home');
          } else if (state is SitingState) {
            print('SitingState');
          }

          return Scaffold(
            body: SafeArea(child: homeCubit.curPage),
            bottomNavigationBar: Goole_nav(onchange: (int value) {
              print(value);
              homeCubit.setCurPage(value);
            }),
          );
        },
      ),
    );
  }

  void showTopSnackBar(BuildContext context, String title, String mess) =>
      Flushbar(
        icon: const Icon(Icons.done_outline, size: 32, color: Colors.white),
        shouldIconPulse: false,
        backgroundGradient: const LinearGradient(
          colors: [Colors.green, Colors.greenAccent],
        ),
        boxShadows: const [
          BoxShadow(
            color: Colors.green,
            offset: Offset(2, 2),
            blurRadius: 8,
          )
        ],
        title: title,
        //' Error Authentication !',
        message: mess,
        //'Check your email',
        duration: const Duration(seconds: 5),
        flushbarPosition: FlushbarPosition.TOP,
        margin: const EdgeInsets.fromLTRB(8, kToolbarHeight, 8, 0),
        borderRadius: BorderRadius.circular(16.0),
      )..show(context);
}

//tohamymedo41@gmail.com
