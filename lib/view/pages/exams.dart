import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lottie/lottie.dart';
import 'package:practice/view_model/bloc/exams_cubit.dart';

import '../../view_model/bloc/midterms_cubit.dart';
import '../componants/app_bar.dart';
import '../componants/lecture_card.dart';

class Exams extends StatelessWidget {
  const Exams({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ExamsCubit()..getDataLecture(),
      child: BlocConsumer<ExamsCubit, ExamsState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          ExamsCubit myCubit = ExamsCubit.get(context);
          return MaterialApp(
            home: Scaffold(
              appBar: AppBarrText(
                  lead: IconButton(
                    icon: Icon(Icons.arrow_back, color: Colors.black),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                  text: 'Exams',
                  action: [
                    IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset('assets/icons/filter.svg'),
                    )
                  ]),
              body: myCubit.examData == null
                  ? Center(child: Lottie.asset('assets/lottie/waiting.json'))
                  : ListView.builder(
                itemCount: myCubit.examData!.data!.length,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return LecturCard(
                    myCubit.examData!.data![index].examSubject.toString(),
                    myCubit.examData!.data![index].examDate.toString(),
                    myCubit.examData!.data![index].examStartTime
                        .toString(),
                    myCubit.examData!.data![index].examEndTime
                        .toString(),
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
