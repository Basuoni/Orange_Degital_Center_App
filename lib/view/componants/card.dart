import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Widget MyCard(String s, String data,VoidCallback onPressed) {
  return InkWell(
    onTap: onPressed,
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      elevation: 10,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.only(top: 10),
            child: CircleAvatar(
              radius: 35,
              backgroundColor: Colors.grey[300],
              child: SizedBox(
                width: 50,
                height: 100,
                child: SvgPicture.asset(
                  s,
                  color: Colors.deepOrange,
                ),
              ),
            ),
          ),
          Text(
            data,
            style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.deepOrangeAccent),
          )
        ],
      ),
    ),
  );
}
