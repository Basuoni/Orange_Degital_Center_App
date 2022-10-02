part of 'sign_up_cubit.dart';

@immutable
abstract class SignUpState {}

class SignUpInitial extends SignUpState {}
class GetDataState  extends SignUpState {}
class LoadingState  extends SignUpState {}
class ChangeVisibilityPassword extends SignUpState {}
class ErrorAuthenticationState  extends SignUpState {}
