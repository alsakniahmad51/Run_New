// ignore_for_file: must_be_immutable

part of 'auth_bloc.dart';

@immutable
abstract class SignUpEvent {}

class SignUp extends SignUpEvent {
  String? email;
  String? password;
  SignUp({required this.email, required this.password});
}
