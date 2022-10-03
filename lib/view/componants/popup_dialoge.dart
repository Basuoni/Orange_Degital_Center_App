import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice/view/pages/login.dart';

import 'login_button.dart';

Widget Logout(String text, BuildContext context) {
  return InkWell(
    onTap: () {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: Text('Logout'),
                content: Text('Are you sure'),
                actions: [
                  LoginButton(Colors.deepOrange, "sure", Colors.white, context,
                      () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Login()));
                  }),
                  LoginButton(
                      Colors.white, "cansel", Colors.deepOrange, context, () {
                    Navigator.pop(context);
                  }),
                ],
              ));
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
              style: const TextStyle(fontSize: 20),
            ),
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.arrow_forward_ios_sharp))
          ],
        ),
      ),
    ),
  );
}
////////////////////////////////////////////////
// Future Popup(context)
// {
//   return
// }
//tohamymedo41@gmail.com
