import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:practice/view_model/database/dio_helper.dart';
import 'package:practice/view_model/database/end_points.dart';

import '../../constant/const.dart';
import '../../model/section_model.dart';

part 'sections_state.dart';

class SectionsCubit extends Cubit<SectionsState> {
  SectionsCubit() : super(SectionsInitial());

  static SectionsCubit get(BuildContext context) => BlocProvider.of(context);
  SectionModel? sectionData;

  void getDataSections() {
    DioHelper.getData(url: userSectionsEndPoint, token: token).then((value) {
      sectionData = SectionModel.fromJson(value.data as Map<String, dynamic>);
      print(sectionData!.message.toString());
      emit(SectionsDataStored());
    });
  }
}
