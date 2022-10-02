import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../view_model/bloc/main_page_cubit.dart';
import '../pages/sing_up.dart';

Widget Sign_up (Color color, String text,Color textcolor,BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 30),
    child: Row(
      children: [
        Expanded(
          child: SizedBox(
            height: 55,
            child: ElevatedButton(
                onPressed: () {

                  Navigator.push(context, MaterialPageRoute(
                      builder: (_) => BlocProvider(
                          create: (context) => MainPageCubit(),
                          child: SigUp())));
                },
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: const BorderSide(color: Colors.deepOrange))),
                  backgroundColor: MaterialStateProperty.all(color),
                ),
                child: Text(text,
                    style:  TextStyle(
                      color: textcolor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ))),
          ),
        ),
      ],
    ),
  );
}
