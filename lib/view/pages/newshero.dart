import 'package:flutter/material.dart';
import '../componants/bold_text.dart';
class Heropage extends StatelessWidget {
  const Heropage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          IconButton(onPressed:(){Navigator.pop(context);} , icon: Icon(Icons.arrow_back_ios,color: Colors.deepOrange,)),
          Hero(tag: '55',
          child: Image.asset('assets/icons/logo.png')),
          BoldText('ODC'),
          //UnderText('220')
          Text('ODC Supprts All Universties')
        ],
      ),
    );

  }
}
