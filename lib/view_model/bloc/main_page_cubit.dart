import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../view/pages/Settings.dart';
import '../../view/pages/home.dart';
import '../../view/pages/news.dart';

part 'main_page_state.dart';

class MainPageCubit extends Cubit<MainPageState> {
  int _curIndex = 0;

  MainPageCubit() : super(MainPageInitial()) {
    curPage = _pages[_curIndex];
  }

  late Widget curPage;
  final List<Widget> _pages = [const Home(), const News(), const Settings()];

  void setCurPage(int value) {
    _curIndex = value;
    curPage = _pages[_curIndex];
    if (_curIndex == 0) {
    } else if (_curIndex == 1) {}
    emit(MainPageRefreshUI());
  }
}
