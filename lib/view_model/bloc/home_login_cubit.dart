import 'package:bloc/bloc.dart';
import 'package:bloc_provider/bloc_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:practice/view_model/database/end_points.dart';

import '../../view/pages/main_page.dart';
import '../database/dio_helper.dart';
part 'home_login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  static LoginCubit get(context) => BlocProvider.of(context);
  TextEditingController emailct = TextEditingController();
  TextEditingController passwordct = TextEditingController();

  void authintication(context) {
    DioHelper.postData(url: loginEndPoint, data: {
      'email': emailct.text,
      'password': passwordct.text,
    }).then((value) {
      print(value.statusCode);
      print(value.data);
      if (value.statusCode == 200) {
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) => MainPage(),
          ),
              (route) => false,
        );
      }
    }).catchError((onError) {
      print(onError);
    });
  }
}
