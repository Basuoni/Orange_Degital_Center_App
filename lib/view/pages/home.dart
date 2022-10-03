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
        MyCard("assets/icons/lecture.svg", 'lecture', onPressed: () {
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const Lectures(),
              ));
        }),
        MyCard("assets/icons/sections.svg", 'sections', onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Sections(),
              ));
        }),

        // push
        // push replacement
        // push and remove until
        MyCard("assets/icons/midterm.svg", 'midterms', onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const Midterms()));
        }),
        MyCard("assets/icons/final.svg", 'final', onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => const Exams()));
        }),
        MyCard("assets/icons/event.svg", 'event', onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Calender()));
        }),
        MyCard("assets/icons/notes.svg", 'notes', onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => const Notes()));
        }),
      ],
    );
  }
}
// apply lints
// clean architecture => folder structure
// replace all widgets to stateless widgets
// dont pass context out the view
// try to use named function parameters
// use route by name not push ===  ex: pushNamed
// search about get it for dependency injection || service locator
