import 'package:flutter/material.dart';

Widget UnderText() {
  return Container(
    padding: const EdgeInsets.only(bottom: 50),
    child: Row(
      children:  [
        const SizedBox(width: 15,),
        Text(
          'Forgot password',
          style: TextStyle(color: Colors.grey[700]),
          textAlign: TextAlign.right,
        ),
      ],
    ),
  );
}