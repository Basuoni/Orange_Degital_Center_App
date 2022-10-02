import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lottie/lottie.dart';
import '../../view_model/bloc/sections_cubit.dart';
import '../componants/app_bar.dart';
import '../componants/lecture_card.dart';

class Sections extends StatelessWidget {

  const Sections({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SectionsCubit()..getDataSections(),
      child: BlocConsumer<SectionsCubit, SectionsState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          SectionsCubit myCubit= SectionsCubit.get(context);
          return MaterialApp(
            home: Scaffold(
              appBar: AppBarrText(
                  lead: IconButton(
                    icon: Icon(Icons.arrow_back, color: Colors.black),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                  text: 'Sections',
                  action: [
                    IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset('assets/icons/filter.svg'),
                    )
                  ]),
              body: Container(
                  child: myCubit.sectionData==null?Center(child: Lottie.asset('assets/lottie/waiting.json')):ListView.builder(
                    shrinkWrap: true,
                    itemCount: myCubit.sectionData!.data!.length,
                    itemBuilder: (BuildContext context,int index){
                    return LecturCard( myCubit.sectionData!.data![index].sectionSubject.toString(),
                      myCubit.sectionData!.data![index].sectionDate.toString(),
                      myCubit.sectionData!.data![index].sectionStartTime.toString(),
                      myCubit.sectionData!.data![index].sectionEndTime.toString(),);
                  },)
              ),
            ),
          );
        },
      ),
    );
  }
}
