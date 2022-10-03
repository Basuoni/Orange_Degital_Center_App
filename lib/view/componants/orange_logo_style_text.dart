import 'package:flutter/material.dart';

class OrangeLogoFontStyle extends StatelessWidget {
  const OrangeLogoFontStyle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20, bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text(
            'Orange ',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.deepOrange,
                fontSize: 25),
          ),
          Text('Digital Center',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
        ],
      ),
    );
  }
}
