import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../componants/google_nav.dart';
import '../../view_model/bloc/main_page_cubit.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MainPageCubit(),
      child: BlocBuilder<MainPageCubit, MainPageState>(
        builder: (context, state) {
          MainPageCubit cubit;
          cubit = MainPageCubit.get(context);

          if (state is HomeState) {
            print('Home');
          } else if (state is NewsState) {
            print('News');
          } else if (state is SitingState) {
            print('SitingState');
          }
          return MaterialApp(
            home: Container(
              child: SafeArea(
                child: Scaffold(
                  body: cubit.curPage,
                  bottomNavigationBar: Goole_nav(onchange: (int value) {
                    print(value);
                    cubit.setCurPage(value);
                  }),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
//tohamymedo41@gmail.com
