import 'package:flutter/material.dart';

Widget Textfield({bool isPassword = false, VoidCallback? onPressedIcon, FormFieldValidator<String>? validator, required String hint, IconData? icon,required TextEditingController txtcontroler,}) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 10),
    child: SizedBox(
      child: TextFormField(
        obscureText : isPassword,
        validator:validator ?? (it){
          if(it?.isEmpty == true) return '$hint must not be empty';
          return null;
        },
        controller: txtcontroler,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          labelText: hint.toString(),
          suffixIcon: IconButton( onPressed:onPressedIcon??(){},icon: Icon(icon)),
          suffixIconColor: Colors.deepOrange,
        ),
      ),
    ),
  );
}
