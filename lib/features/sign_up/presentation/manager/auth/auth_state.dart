// ignore_for_file: must_be_immutable

part of 'auth_bloc.dart';

@immutable
sealed class SignUpState {}

final class AuthInitial extends SignUpState {}

final class SignUpInitial extends SignUpState {}

final class SignUpLoading extends SignUpState {
  bool loading;
  SignUpLoading({required this.loading});
}

final class SignUpSuccess extends SignUpState {
  bool loading;
  SignUpSuccess({required this.loading});
}

final class SignUpFailure extends SignUpState {
  String errmaessage;
  bool loading;

  SignUpFailure({required this.errmaessage, required this.loading});
}
