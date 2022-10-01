
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practice/view/componants/signup_button.dart';
import '../../view_model/bloc/home_login_cubit.dart';
import '../componants/bold_text.dart';
import '../componants/login_button.dart';
import '../componants/or_devider.dart';
import '../componants/orange_logo_style_text.dart';
import '../componants/text_field.dart';
import '../componants/text_under_textfield.dart';

class Login extends StatelessWidget {
  var farmkay = GlobalKey<FormState>();
  bool isPassword = true;
  IconData iconPassword = Icons.remove_red_eye;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: BlocConsumer<LoginCubit, LoginState>(
        listener: (context, state) {
          if (state is ErrorAuthenticationState) {
            // showSnackBar(context);
          }
        },
        builder: (context, state) {
          return BlocBuilder<LoginCubit, LoginState>(
            builder: (context, state) {
              LoginCubit myCubit;
              myCubit = BlocProvider.of(context);

              return Scaffold(
                backgroundColor: Colors.white,
                body: SingleChildScrollView(
                  child: SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Form(
                        key: farmkay,
                        child: Column(
                          children: [
                            OrangeLogoFontStyle(),
                            BoldText('Login'),
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
                                hint: 'E-Mail',
                                txtcontroler: myCubit.emailct),
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
                                txtcontroler: myCubit.passwordct),
                            UnderText(),
                            LoginButton(Colors.deepOrange, 'Login',
                                Colors.white, context, () {
                              if (farmkay.currentState!.validate()) {
                                myCubit.authintication(context);
                              }
                            }),
                            OrDvider(),
                            SignupButton(Colors.white, 'Sign up',
                                Colors.deepOrange, context),
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
  //
  // void showSnackBar(BuildContext context) =>Flushbar(
  //   duration: const Duration(seconds: 2),
  //   // shouldIconPulse: false,
  //   borderRadius: 15,
  //   title: ' Find Error!',
  //   message: '  in password or email',
  //   flushbarPosition: FlushbarPosition.TOP,
  //   icon: const Icon(Icons.error_outline ,size: 25,color: Colors.white,),
  // )..show(context);
}
