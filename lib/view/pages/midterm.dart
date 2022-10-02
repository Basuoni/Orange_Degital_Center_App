import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:practice/view_model/bloc/midterms_cubit.dart';
import '../componants/app_bar.dart';
import '../componants/lecture_card.dart';

class Midterms extends StatelessWidget {
  const Midterms({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MidtermsCubit()..getDataLecture(),
      child: BlocConsumer<MidtermsCubit, MidtermsState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          MidtermsCubit myCubit= MidtermsCubit.get(context);
          return MaterialApp(
            home: Scaffold(
              appBar: AppBarrText(
                  lead: IconButton(
                    icon: Icon(Icons.arrow_back, color: Colors.black),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                  text: 'Midterms',
                  action: [
                    IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset('assets/icons/filter.svg'),
                    )
                  ]),
              body: myCubit.midtermData?.message == null
                  ? Center(child: Text('loding...'))
                  : ListView.builder(
                itemCount: myCubit.midtermData!.data!.length,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return LecturCard(
                    myCubit.midtermData!.data![index].lectureSubject.toString(),
                    myCubit.midtermData!.data![index].lectureDate.toString(),
                    myCubit.midtermData!.data![index].lectureStartTime
                        .toString(),
                    myCubit.midtermData!.data![index].lectureStartTime
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
