// ignore_for_file: avoid_print

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  SignUpBloc() : super(AuthInitial()) {
    on<SignUpEvent>((event, emit) async {
      if (event is SignUp) {
        try {
          emit(SignUpLoading());
          // ignore: unused_local_variable
          final credential =
              await FirebaseAuth.instance.createUserWithEmailAndPassword(
            email: event.email!,
            password: event.password!,
          );
          emit(SignUpSuccess());
        } on FirebaseAuthException catch (e) {
          if (e.code == 'weak-password') {
            print('The password provided is too weak.');
          } else if (e.code == 'email-already-in-use') {
            print('The account already exists for that email.');
          }
          emit(SignUpFailure(errmaessage: "hello world"));
        } catch (e) {
          print(e);
        }
      }
    });
  }
}
