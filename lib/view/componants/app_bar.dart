import 'package:flutter/material.dart';

PreferredSizeWidget AppBarrText(
    {List<AnimatedWidget>? action, required String text, Icon? icon}) {
  return AppBar(
    backgroundColor: Colors.white,
    leading: null,
    title: Text(
      text,
      style: TextStyle(
          fontSize: 40, color: Colors.black, fontWeight: FontWeight.w400),
    ),
    centerTitle: true,
    actions: action,
  );
}
