import 'package:another_flushbar/flushbar.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
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
  bool isLogining = false;

  IconData iconPassword = Icons.remove_red_eye;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: BlocConsumer<LoginCubit, LoginState>(
        listener: (context, state) {
          if (state is ErrorAuthenticationState) {
            showTopSnackBar(context);
          }
          isLogining = (state is LoadingState);
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
                            UnderText('Forget password'),
                            SizedBox(
                              height: 100,
                              child: Center(
                                child: isLogining
                                    ? Lottie.asset(
                                        'assets/lottie/waiting_api.json')
                                    : LoginButton(Colors.deepOrange, 'Login',
                                        Colors.white, context, () {
                                        if (farmkay.currentState!.validate()) {
                                          myCubit.authintication(context);
                                        }
                                      }),
                              ),
                            ),
                            OrDvider(),
                            SignupButton(isLogining,Colors.white, 'Sign up',
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

  void showTopSnackBar(BuildContext context) => Flushbar(
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
        title: ' Error Authentication !',
        message: 'Check your password or email',
        duration: const Duration(seconds: 5),
        flushbarPosition: FlushbarPosition.TOP,
        margin: const EdgeInsets.fromLTRB(8, kToolbarHeight, 8, 0),
        borderRadius: BorderRadius.circular(16.0),
      )..show(context);
}
