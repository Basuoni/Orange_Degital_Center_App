import 'package:flutter/material.dart';
import 'newshero.dart';
class News extends StatelessWidget {
  const News({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Heropage()));},
      child: Card(elevation: 20,
          shape: BeveledRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),

          ),
          child: Hero(tag: '55',
          child: Image.asset('assets/icons/logo.png'))),
    );
  }
}
