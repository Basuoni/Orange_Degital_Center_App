import 'package:flutter/material.dart';

Widget UnderText() {
  return Container(
    padding: EdgeInsets.only(bottom: 50),
    child: Row(
      children: const [
        Text(
          'Forgot password',
          style: TextStyle(color: Colors.deepOrange),
          textAlign: TextAlign.right,
        ),
      ],
    ),
  );
}