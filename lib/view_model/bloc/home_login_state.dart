part of 'home_login_cubit.dart';

@immutable
abstract class LoginState {}

class LoginInitial extends LoginState {}
class ChangeVisibilityPassword extends LoginState {}
class ErrorAuthenticationState  extends LoginState {}
