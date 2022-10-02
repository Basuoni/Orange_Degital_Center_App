import 'package:flutter/material.dart';
import 'package:practice/view/componants/login_button.dart';

import '../componants/text_field.dart';

class Support extends StatelessWidget {
  Support({Key? key}) : super(key: key);
  TextEditingController aa = TextEditingController();
  TextEditingController bb = TextEditingController();
  TextEditingController cc = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Support'),
        foregroundColor: Colors.deepOrange,
        backgroundColor: Colors.white,
      ),
      body:

      Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Textfield(hint: 'Name',
              txtcontroler:aa,
            ),
            Textfield(hint: 'E-mail',
              txtcontroler:bb,
            ),
            Textfield(hint: "what's making you unhappy?",
              txtcontroler:cc,
            ),
            SizedBox(height: 20,),
            LoginButton(Colors.deepOrange, "Submit", Colors.white, context, () { })
          ],
        ),
      ),
    );
  }
}
