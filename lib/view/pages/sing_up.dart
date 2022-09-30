import 'package:flutter/material.dart';
import '../componants/bold_text.dart';
import '../componants/dropdown_list.dart';
import '../componants/login_button.dart';
import '../componants/or_devider.dart';
import '../componants/orange_logo_style_text.dart';
import '../componants/text_field.dart';


class SigUp extends StatelessWidget {

 TextEditingController rehan=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                OrangeLogoFontStyle(),
                BoldText('Sign Up'),
                Textfield(hint: 'Name',txtcontroler:rehan),
                Textfield(hint: 'E-Mail',txtcontroler:rehan),
                Textfield(hint: 'Password', icon: Icons.remove_red_eye,txtcontroler:rehan),
                Textfield(hint: 'Password', icon: Icons.remove_red_eye,txtcontroler:rehan),
                Textfield(hint: 'Phone Number',txtcontroler:rehan),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    DropDown('Gender'),
                    DropDown('University'),
                  ],
                ),
                DropDown('Grade'),
                SizedBox(height: 50,),
                LoginButton(Colors.deepOrange, 'Login',Colors.white,context,(){}),
                OrDvider(),
                LoginButton(Colors.white, 'Sign up',Colors.deepOrange,context,(){}),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
