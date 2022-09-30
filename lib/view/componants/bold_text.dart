import 'package:flutter/material.dart';

Widget BoldText(String text)
{
  return  Container(
    padding: EdgeInsets.only(bottom: 20),
    child: Row(
      children: [
        Text(
          text,
          style: const TextStyle(
              fontWeight: FontWeight.bold, fontSize: 25),
          textAlign: TextAlign.right,
        ),
      ],
    ),
  );
}