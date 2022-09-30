import 'package:flutter/material.dart';
import 'package:practice/view/componants/card.dart';
import 'package:practice/view/pages/lectures.dart';

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
        MyCard("assets/icons/sections.svg", 'sections',(){Navigator.push(context, MaterialPageRoute(builder: (context)=>Lectures()));}),
        MyCard("assets/icons/midterm.svg", 'midterms',(){}),
        MyCard("assets/icons/final.svg", 'final',(){}),
        MyCard("assets/icons/event.svg", 'event',(){}),
        MyCard("assets/icons/notes.svg", 'notes',(){}),
      ],
    );
  }
}
