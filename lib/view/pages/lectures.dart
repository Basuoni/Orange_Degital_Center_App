import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lottie/lottie.dart';
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
          LectureCubit myCubit = LectureCubit.get(context);
          return MaterialApp(
            home: Scaffold(
              appBar: AppBarrText(
                  lead: IconButton(
                    icon: Icon(Icons.arrow_back, color: Colors.black),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                  text: 'Lecture',
                  action: [
                    IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset('assets/icons/filter.svg'),
                    )
                  ]),
              body: myCubit.lectureData?.message == null
                  ? Center(child: Lottie.asset('assets/lottie/waiting.json'))
                  : ListView.builder(
                itemCount: myCubit.lectureData!.data!.length,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return LecturCard(
                    myCubit.lectureData!.data![index].lectureSubject.toString(),
                    myCubit.lectureData!.data![index].lectureDate.toString(),
                    myCubit.lectureData!.data![index].lectureStartTime.toString(),
                    myCubit.lectureData!.data![index].lectureStartTime.toString(),
                    //myCubit.lectureData!.data![index].university.toString()
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
//tohamymedo41@gmail.com
