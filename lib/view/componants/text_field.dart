import 'package:flutter/material.dart';

Widget Textfield({required String hint, IconData? icon,required TextEditingController txtcontroler,}) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 20),
    child: TextField(
      controller: txtcontroler,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        labelText: hint.toString(),
        suffixIcon: Icon(icon),
        suffixIconColor: Colors.deepOrange,
      ),
    ),
  );
}
