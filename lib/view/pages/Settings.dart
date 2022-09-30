import 'package:flutter/material.dart';

import '../componants/app_bar.dart';
import '../componants/sting_card.dart';


class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       appBar: AppBarrText(text: 'Setting'),
      body: Column(
        children: [
          SetingCard(),
        ],
      ),
    );
  }
}
