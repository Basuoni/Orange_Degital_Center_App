import 'package:flutter/material.dart';

PreferredSizeWidget AppBarrText(
    {List<Widget>? action, required String text, Widget? lead}) {
  return AppBar(
    backgroundColor: Colors.white,
    leading: lead,
    title: Text(
      text,
      style: TextStyle(
          fontSize: 30, color: Colors.black, fontWeight: FontWeight.w400),
    ),
    centerTitle: true,
    actions: action,
  );
}
