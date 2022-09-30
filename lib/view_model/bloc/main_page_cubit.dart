import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import '../../view/pages/home.dart';
import '../../view/pages/news.dart';
import '../../view/pages/Settings.dart';

part 'main_page_state.dart';

class MainPageCubit extends Cubit<MainPageState> {
  int _curIndex = 0;
  final List<Widget> _pages = [const Home(), const News(), const Settings()];
  late Widget curPage;

  MainPageCubit() : super(MainPageInitial()) {
    curPage = _pages[_curIndex];
  }

  static MainPageCubit get(context) => BlocProvider.of<MainPageCubit>(context);

  void setCurPage(int value) {
    _curIndex = value;
    curPage = _pages[_curIndex];
    if (_curIndex==0){
    emit(HomeState());}
    else if (_curIndex==1){
      emit(NewsState());}
    else {
      emit(SitingState());
    }
  }
}
