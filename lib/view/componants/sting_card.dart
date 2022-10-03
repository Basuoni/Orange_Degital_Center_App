import 'package:flutter/material.dart';

Widget SetingCard(String text, BuildContext context, Widget desiredPage) {
  return InkWell(
    onTap: () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => desiredPage));
    },
    child: Container(
      width: double.infinity,
      height: 100,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: TextStyle(fontSize: 20),
            ),
            IconButton(
                onPressed: () {}, icon: Icon(Icons.arrow_forward_ios_sharp))
          ],
        ),
      ),
    ),
  );
}
