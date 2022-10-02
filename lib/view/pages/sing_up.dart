import 'package:another_flushbar/flushbar.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '../../view_model/bloc/sign_up_cubit.dart';
import '../componants/bold_text.dart';
import '../componants/dropdown_list.dart';
import '../componants/login_button.dart';
import '../componants/or_devider.dart';
import '../componants/orange_logo_style_text.dart';
import '../componants/text_field.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'login.dart';

class SigUp extends StatelessWidget {

  var formKey = GlobalKey<FormState>();
  bool isPassword = true;
  bool isPassword2 = true;
  bool isLogining = false;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignUpCubit(),
      child: BlocConsumer<SignUpCubit, SignUpState>(
        listener: (context, state) {
          if(state is ErrorAuthenticationState){
            showTopSnackBar(context,"Find Error!","User already exists.");
          }
          isLogining = (state is LoadingState);
        },
        builder: (context, state) {
          return BlocBuilder<SignUpCubit, SignUpState>(
            builder: (context, state) {
              SignUpCubit myCubit;
              myCubit = BlocProvider.of(context);
              return Scaffold(
                body: SingleChildScrollView(
                  child: SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Form(
                        key: formKey,
                        child: Column(
                          children: [
                            OrangeLogoFontStyle(),
                            BoldText('Sign Up'),
                            Textfield(
                                hint: 'Name',
                                txtcontroler: myCubit.nameController),
                            Textfield(
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'email must not be empty';
                                  }
                                  if (!EmailValidator.validate(value)) {
                                    return 'Please check email format !!';
                                  }
                                  return null;
                                },
                                type: TextInputType.emailAddress,
                                hint: 'E-Mail',
                                txtcontroler: myCubit.emailController),
                            Textfield(
                                hint: 'Phone',
                                type: TextInputType.number,
                                txtcontroler: myCubit.phoneController),
                            Textfield(
                                isPassword: isPassword,
                                onPressedIcon: () {
                                  isPassword = !isPassword;
                                   myCubit.changeVisibilityPassword();
                                },
                                hint: 'Password',
                                icon: isPassword
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                txtcontroler: myCubit.passwordController),
                            Textfield(
                                isPassword: isPassword2,
                                onPressedIcon: () {
                                  isPassword2 = !isPassword2;
                                   myCubit.changeVisibilityPassword();
                                },
                                hint: 'Password',
                                icon: isPassword2
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                txtcontroler: myCubit.conPasswordController),
                            DropDown(
                                name: 'Gender',
                                icon: Icons.man_rounded,
                                item: myCubit.genderItem,
                                onChange: (value) {
                                  myCubit.genderSelected(value!);
                                }),
                            DropDown(
                                name: 'University',
                                icon: Icons.home_work_outlined,
                                item: myCubit.universityItem,
                                onChange: (value) {
                                  myCubit.universitySelected(value!);
                                }),
                            DropDown(
                                name: 'Grade',
                                icon: Icons.grade_outlined,
                                item: myCubit.gradeItem,
                                onChange: (value) {
                                  myCubit.gradeSelected(value!);
                                }),
                            const SizedBox(
                              height: 30,
                            ),
                            SizedBox(
                              height: 100,
                              child: Center(
                                child: isLogining
                                    ? Lottie.asset(
                                    'assets/lottie/waiting_api.json')
                                    : LoginButton(Colors.deepOrange, 'Sign up',
                                    Colors.white, context, () {
                                      if (formKey.currentState!.validate()) {
                                        if (myCubit.passwordController.text ==
                                            myCubit.conPasswordController.text) {
                                          myCubit.register(context);
                                        } else {
                                          showTopSnackBar(context, "Find Error!",
                                              "Make sure the password matches");
                                        }
                                      }
                                    }),
                              ),
                            ),

                            OrDvider(),
                            LoginButton(Colors.white, 'Login',
                                Colors.deepOrange, context, () {
                                 if(!isLogining) {
                                   Navigator.pushAndRemoveUntil(
                                    context,
                                    MaterialPageRoute(
                                      builder: (BuildContext context) => Login(),
                                    ),
                                        (route) => false,
                                  );
                                 }
                                }),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }

  void showTopSnackBar(BuildContext context, String title, String mess) =>
      Flushbar(
        icon: const Icon(Icons.error, size: 32, color: Colors.white),
        shouldIconPulse: false,
        backgroundGradient: const LinearGradient(
          colors: [Colors.deepOrange, Colors.deepOrangeAccent],
        ),
        boxShadows: const [
          BoxShadow(
            color: Colors.deepOrange,
            offset: Offset(2, 2),
            blurRadius: 8,
          )
        ],
        title: title, //' Error Authentication !',
        message: mess, //'Check your email',
        duration: const Duration(seconds: 5),
        flushbarPosition: FlushbarPosition.TOP,
        margin: const EdgeInsets.fromLTRB(8, kToolbarHeight, 8, 0),
        borderRadius: BorderRadius.circular(16.0),
      )..show(context);
}