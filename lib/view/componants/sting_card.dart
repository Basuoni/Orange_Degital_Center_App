import 'package:flutter/material.dart';

Widget SetingCard ()
{
  return ListTile(
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0)),
    selected: true,
    selectedTileColor: Colors.orange[300],
    title: const Text(
      'FAQ',
      style: TextStyle(fontWeight: FontWeight.bold),
    ),
    trailing: const Icon(Icons.arrow_forward),
  );
}