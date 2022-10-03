part of 'main_page_cubit.dart';

@immutable
abstract class MainPageState {}

class MainPageInitial extends MainPageState {}

class MainPageRefreshUI extends MainPageState {}

class SitingState extends MainPageState {}

class HomeState extends MainPageState {}

class NewsState extends MainPageState {}
// dont create new state elseif you want to use it in view page
