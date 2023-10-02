// ignore_for_file: must_be_immutable

part of 'auth_bloc.dart';

@immutable
sealed class SignUpState {}

final class AuthInitial extends SignUpState {}

final class SignUpInitial extends SignUpState {}

final class SignUpLoading extends SignUpState {}

final class SignUpSuccess extends SignUpState {}

final class SignUpFailure extends SignUpState {
  String errmaessage;

  SignUpFailure({required this.errmaessage});
}
