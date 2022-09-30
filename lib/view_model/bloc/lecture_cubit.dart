import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:practice/constant/const.dart';
import 'package:practice/model/lecture_model.dart';
import 'package:practice/view_model/database/dio_helper.dart';
import 'package:practice/view_model/database/end_points.dart';

part 'lecture_state.dart';

class LectureCubit extends Cubit<LectureState> {
  LectureCubit() : super(LectureInitial());

  static LectureCubit get(context) => BlocProvider.of(context);
  LectureModel ?lectureData;

  void getDataLecture() {
    DioHelper.getData(url: lectureEndPoint,token: token).then((value) {
      lectureData =LectureModel.fromJson(value.data);
      print(lectureData?.message.toString());
      emit(LectureDataStored());
    });
  }
}
