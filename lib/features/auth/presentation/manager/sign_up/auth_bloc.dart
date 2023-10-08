// ignore_for_file: avoid_print

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  bool loading = false;
  SignUpBloc() : super(AuthInitial()) {
    on<SignUpEvent>((event, emit) async {
      if (event is SignUp) {
        try {
          emit(SignUpLoading());
          loading = true;
          // ignore: unused_local_variable
          final credential =
              await FirebaseAuth.instance.createUserWithEmailAndPassword(
            email: event.email!,
            password: event.password!,
          );
          emit(SignUpSuccess());
          loading = false;
        } on FirebaseAuthException catch (e) {
          if (e.code == 'weak-password') {
            print('The password provided is too weak.');
            emit(SignUpFailure(
              errmaessage: "The password provided is too weak.",
            ));
            loading = false;
          } else if (e.code == 'email-already-in-use') {
            print('The account already exists for that email.');
            emit(SignUpFailure(
              errmaessage: "The account already exists for that email.",
            ));
            loading = false;
          }
        } catch (e) {
          print(e);
          emit(SignUpFailure(
            errmaessage: "somthing was wrong",
          ));
          loading = false;
        }
      }
    });
  }
}
