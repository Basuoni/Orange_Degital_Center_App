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


class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: BlocConsumer<LoginCubit, LoginState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return BlocBuilder<LoginCubit, LoginState>(
            builder: (context, state) {
              LoginCubit myCubit;

              myCubit = BlocProvider.of(context);

              return Scaffold(
                body: SingleChildScrollView(
                  child: SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          OrangeLogoFontStyle(),
                          BoldText('Login'),
                          Textfield(hint: 'E-Mail',
                              txtcontroler: myCubit.emailct),
                          Textfield(
                              hint: 'Password',
                              icon: Icons.remove_red_eye,
                              txtcontroler: myCubit.passwordct),
                          UnderText(),
                          LoginButton(
                              Colors.deepOrange, 'Login', Colors.white, context,
                                  () {
                                myCubit.authintication(context);
                              }),
                          OrDvider(),
                          SignupButton(
                              Colors.white, 'Sign up', Colors.deepOrange,
                              context),
                        ],
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
}
