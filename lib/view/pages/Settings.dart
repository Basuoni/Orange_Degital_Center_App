import 'package:flutter/material.dart';
import '../componants/app_bar.dart';
import '../componants/popup_dialoge.dart';
import '../componants/sting_card.dart';
import '../componants/termes&condtions.dart';
import 'FAQ.dart';


class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       appBar: AppBarrText(text: 'Setting'),
      body: Column(
        children: [
          SetingCard('FAQ',context,FAQ()),
          SetingCard('Terms & Conditions',context,Terms()),
          SetingCard('Support',context,Terms()),
          Logout('Log out',context),
        ],
      ),
    );
  }
}
