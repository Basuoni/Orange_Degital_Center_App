import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:practice/model/lecture_model.dart';
import '../../constant/const.dart';
import '../database/dio_helper.dart';
import '../database/end_points.dart';

part 'midterms_state.dart';

class MidtermsCubit extends Cubit<MidtermsState> {
  MidtermsCubit() : super(MidtermsInitial());

  static MidtermsCubit get(context) => BlocProvider.of(context);
  LectureModel ? midtermData;

  void getDataLecture() {
    DioHelper.getData(url: lectureEndPoint, token: token).then((value) {
      midtermData = LectureModel.fromJson(value.data);
      print(midtermData?.message.toString());
      emit(MidtermDataStored());
    });
  }
}
