import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practice/view_model/bloc/lecture_cubit.dart';
import '../componants/app_bar.dart';
import '../componants/lecture_card.dart';

class Lectures extends StatelessWidget {
  const Lectures({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LectureCubit()..getDataLecture(),
      child: BlocConsumer<LectureCubit, LectureState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          LectureCubit myCubit =LectureCubit.get(context);
          return MaterialApp(
            home: Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.red,
                title: const Text("Lectures"),
              ),
              body: LecturCard('flutter'),
            ),
          );
        },
      ),
    );
  }
}
//tohamymedo41@gmail.com
