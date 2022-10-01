import 'package:flutter/material.dart';

Widget LoginButton(
    Color color, String text, Color textcolor, BuildContext context,VoidCallback onPressed) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 15),
    child: Row(
      children: [
        Expanded(
          child: SizedBox(
            height: 50,
            child: ElevatedButton(
                onPressed: onPressed,
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: const BorderSide(color: Colors.deepOrange))),
                  backgroundColor: MaterialStateProperty.all(color),
                ),
                child: Text(text,
                    style: TextStyle(
                      color: textcolor,
                      fontSize: 20,
                    ))),
          ),
        ),
      ],
    ),
  );
}
