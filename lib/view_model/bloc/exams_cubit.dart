import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import '../../constant/const.dart';
import '../../model/exam_model.dart';
import '../database/dio_helper.dart';
import '../database/end_points.dart';


part 'exams_state.dart';

class ExamsCubit extends Cubit<ExamsState> {
  ExamsCubit() : super(ExamsInitial());
  static ExamsCubit get(context)=>BlocProvider.of(context);
  ExamsModel ?examData;
  void getDataLecture() {
    DioHelper.getData(url: examsEndPoint,token: token).then((value) {
      examData =ExamsModel.fromJson(value.data);
      print(examData!.message.toString());
      emit(ExamsDataStored());
    });
  }
}
