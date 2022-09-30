import 'package:flutter/material.dart';

Widget LecturCard(String text) {
  return Container(
    child: Container(
      width: double.infinity,
      height: 100,
      child: Card(
        child: Center(
          child: Text(text),
        ),
      ),
    ),
  );
}
