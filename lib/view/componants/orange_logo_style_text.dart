import 'package:flutter/material.dart';
Widget OrangeLogoFontStyle ()
{
  return Container(
    padding: EdgeInsets.only(top:20,bottom: 80),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children:  const [
        Text(
          'Orange ',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.deepOrange,
              fontSize: 30),
        ),
        Text('Digital Center',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 30)),
      ],
    ),
  );
}