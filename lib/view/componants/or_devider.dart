import 'package:flutter/material.dart';

Widget OrDvider() {
  return Padding(
    padding: const EdgeInsets.only(bottom: 30),
    child: Row(children: const <Widget>[
      Expanded(
          child: Divider(
        color: Colors.grey,
        thickness: 2,
      )),
      Text("   OR   "),
      Expanded(
          child: Divider(
        color: Colors.grey,
        thickness: 2,
      )),
    ]),
  );
}
