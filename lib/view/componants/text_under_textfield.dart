import 'package:flutter/material.dart';

Widget UnderText(String s) {
  return Container(
    padding: const EdgeInsets.only(bottom: 30),
    child: Row(
      children:  [
        const SizedBox(width: 15,),
        Text(
          s,
          style: TextStyle(color: Colors.grey[700]),
          textAlign: TextAlign.right,
        ),
      ],
    ),
  );
}