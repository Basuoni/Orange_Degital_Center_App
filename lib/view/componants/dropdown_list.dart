import 'package:flutter/material.dart';


Widget DropDown({required String name,required IconData icon,required List<String> item,required FormFieldSetter<String> onChange}) {
  String selectedItem = item[0];
  return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 5),

      child: DropdownButtonFormField(
        value: selectedItem,
        onChanged: onChange,
        decoration:   InputDecoration(
          labelText: name,
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
          prefixIcon: Icon(icon),
        ),
        icon: const Icon(Icons.arrow_drop_down_circle_outlined,
            color: Colors.deepOrange),

        items: item.map<DropdownMenuItem<String>>((String item) {
          return DropdownMenuItem<String>(
            value: item,
            child: Text(item),
          );
        }).toList(),
      ));
}

