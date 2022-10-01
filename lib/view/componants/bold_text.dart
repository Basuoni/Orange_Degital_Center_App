import 'package:flutter/material.dart';

Widget BoldText(String text)
{
  return  Container(
    padding: const EdgeInsets.only(bottom: 10,top: 15),
    child: Row(

      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(width: 15,),
        Text(
          text,
          style: const TextStyle(
              fontSize: 25),
          textAlign: TextAlign.right,
        ),
      ],
    ),
  );
}