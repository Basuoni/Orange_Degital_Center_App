import 'package:flutter/material.dart';
import 'package:practice/view/pages/login.dart';

import '../componants/orange_logo_style_text.dart';
class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(const Duration(seconds: 5),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Login()));
    },);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OrangeLogoFontStyle(),
            const SizedBox(height: 30,),
             Container(
               width: 80,
               height: 80,
               child: const CircularProgressIndicator(
                color: Colors.deepOrange ,
            ),
             ),

          ],
        ),
      ),
    );
  }
}
//tohamymedo41@gmail.com