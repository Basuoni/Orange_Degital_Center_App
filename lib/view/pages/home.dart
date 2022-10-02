import 'package:flutter/material.dart';
import 'package:practice/view/componants/card.dart';
import 'package:practice/view/pages/calender.dart';
import 'package:practice/view/pages/exams.dart';
import 'package:practice/view/pages/lectures.dart';
import 'package:practice/view/pages/sections.dart';

import 'addnotes.dart';
import 'midterm.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 1,
      mainAxisSpacing: 10,
      // crossAxisCount: 2,
      crossAxisCount: 2,
      children: [
        MyCard("assets/icons/lecture.svg", 'lecture', (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Lectures()));}),
        MyCard("assets/icons/sections.svg", 'sections',(){Navigator.push(context, MaterialPageRoute(builder: (context)=>Sections()));}),
        MyCard("assets/icons/midterm.svg", 'midterms',(){Navigator.push(context, MaterialPageRoute(builder: (context)=>Midterms()));}),
        MyCard("assets/icons/final.svg", 'final',(){Navigator.push(context, MaterialPageRoute(builder: (context)=>Exams()));}),
        MyCard("assets/icons/event.svg", 'event',(){Navigator.push(context, MaterialPageRoute(builder: (context)=>Calender()));}),
        MyCard("assets/icons/notes.svg", 'notes',(){Navigator.push(context, MaterialPageRoute(builder: (context)=>Notes()));}),
      ],
    );
  }
}
