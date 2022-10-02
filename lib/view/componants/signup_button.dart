
import 'package:flutter/material.dart';

import '../pages/sing_up.dart';

Widget SignupButton(bool go,Color color, String text,Color textcolor,BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 30),
    child: Row(
      children: [
        Expanded(
          child: SizedBox(
            height: 50,
            child: ElevatedButton(
                onPressed: () {
                  if(!go) {
                    Navigator.push(context, MaterialPageRoute(builder: (_) =>  SigUp()));
                  }
                },
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: const BorderSide(color: Colors.deepOrange))),
                  backgroundColor: MaterialStateProperty.all(color),
                ),
                child: Text(text,
                    style:  TextStyle(
                      color: textcolor,
                      fontSize: 20,
                    ))),
          ),
        ),
      ],
    ),
  );
}
