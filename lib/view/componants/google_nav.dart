import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

Widget Goole_nav({required ValueChanged<int> onchange,int i=0}) {
  return GNav(
    selectedIndex:i ,
    onTabChange: onchange,
    rippleColor: Colors.deepOrange[300]!,
    hoverColor: Colors.deepOrange[100]!,
    gap: 8,
    activeColor: Colors.deepOrange,
    iconSize: 24,
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
    duration: const Duration(milliseconds: 400),
    tabBackgroundColor: Colors.grey[100]!,
    color: Colors.black,
    tabs: const [
      GButton(
        icon: CupertinoIcons.home,
        text: 'Home',
      ),
      GButton(
        icon: Icons.newspaper,
        text: 'News',
      ),
      GButton(
        icon: Icons.settings_outlined,
        text: 'Setting',
      ),
    ],
  );
}
