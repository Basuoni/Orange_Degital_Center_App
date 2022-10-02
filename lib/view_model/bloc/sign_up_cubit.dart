import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:practice/model/grade_response.dart';
import 'package:practice/model/university_response.dart';
import 'package:practice/view_model/database/dio_helper.dart';
import 'package:practice/view_model/database/end_points.dart';

import '../../view/pages/login.dart';

part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  List<String> genderItem = ['Male', 'Female'];
  List<String> gradeItem = ['Please Waite..'];
  List<String> universityItem = ['Please Waite..'];

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController conPasswordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  int _grade = 1, _university = 3, _cnt = 0;
  Map<String, int> _idUnversty = {};
  String _gender = 'm';

  SignUpCubit() : super(SignUpInitial()) {
    _getData();
  }

  void genderSelected(String it) {
    _gender = it;
  }

  void gradeSelected(String it) {
    for (int i = 0; i < gradeItem.length; i++) {
      if (it == gradeItem[i]) {
        _grade = i + 1;
      }
    }
  }

  void universitySelected(String it) {
    _university = _idUnversty[it]!;
  }

  void changeVisibilityPassword() {
    emit(ChangeVisibilityPassword());
  }

  void register(context) {
    emit(LoadingState()); Future.delayed(const Duration(seconds: 3), () {
    DioHelper.postData(url: registerEndPoint, data: {
      'name': nameController.text,
      'email': emailController.text,
      'password': passwordController.text,
      'gender': _gender == 'Male' ? 'm' : 'f',
      'phoneNumber': phoneController.text,
      'universityId': _university,
      'gradeId': _grade,
    }).then((value) {
      print(value.data);
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (BuildContext context) => Login(),
        ),
        (route) => false,
      );
    }).catchError((e) {
      print('registerEndPoint : $e');
      emit(ErrorAuthenticationState());
    }); });
  }

  void _getData() {
    _cnt = 2;
    DioHelper.getData(url: gradeEndPoint).then((value) {
      if (value.statusCode == 200) {
        final data = GradeResponse.fromJson(value.data);
        gradeItem = [];
        for (var it in data.data!) {
          gradeItem.add(it.grade!);
        }
        _done();
      }
    }).catchError((e) {
      print("gradeEndPoint : $e");
    });
    DioHelper.getData(url: universityEndPoint).then((value) {
      if (value.statusCode == 200) {
        final data = UniversityResponse.fromJson(value.data);
        universityItem = [];
        for (var it in data.data!) {
          _idUnversty[it.name!] = it.id!;
          universityItem.add(it.name!);
        }
        _done();
      }
    }).catchError((e) {
      print("universityEndPoint : $e");
    });
  }

  void _done() {
    _cnt--;
    if (_cnt == 0) {
      emit(GetDataState());
    }
  }
}
/*{
    required String name,
    required String email,
    required String password,
    required String gender,
    required String phoneNumber,
    required int universityId,
    required int gradeId,*/
