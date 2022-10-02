import 'package:flutter/material.dart';

import '../componants/bold_text.dart';
import '../componants/text_under_textfield.dart';
class Heropage extends StatelessWidget {
  const Heropage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                IconButton(onPressed:(){Navigator.pop(context);} , icon: Icon(Icons.arrow_back_ios,color: Colors.deepOrange,)),
              ],
            ),
            Hero(tag: '55',
            child: Image.asset('assets/icons/logo.png')),
            BoldText('ODC'),
            UnderText('2022-07-06'),
            Text('ODC Supprts All Universties')
          ],
        ),
      ),
    );

  }
}
