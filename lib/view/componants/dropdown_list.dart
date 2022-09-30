import 'package:flutter/material.dart';

import 'bold_text.dart';

Widget DropDown(String text) {
  List<String> items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];
  String selectedItem = 'Item 1';
  return Column(

    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BoldText(text),
        ],
      ),
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          border: Border.all(
            width: 1.5,
            color: Colors.deepOrange,
            // red as border color
          ),
        ),
        child: DropdownButton(
          value: selectedItem,
          items: items
              .map((item) => DropdownMenuItem(
                    value: item,
                    child: Text(
                      item,
                      style: TextStyle(fontSize: 24),
                    ),
                  ))
              .toList(),
          onChanged: (item) => setState(() => selectedItem = item!),
        ),
      ),
    ],
  );
}

setState(String Function() param0) {

}
