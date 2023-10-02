import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:running_app/core/utils/router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:running_app/features/sign_up/presentation/manager/auth/auth_bloc.dart';
import 'package:running_app/manager/refresh/refresh_cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
// Ideal time to initialize
  // await FirebaseAuth.instance.useAuthEmulator('localhost', 9099);
  runApp(const RunApp());
//...
}

class RunApp extends StatelessWidget {
  // const RunApp({super.key});
  const RunApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => SignUpBloc(),
        ),
        BlocProvider(
          create: (context) => RefreshCubit(),
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        //home: const GetStartedView(),
        routerConfig: AppRouter.router,
        // routerDelegate: AppRouter.router.delegate(),
        // routeInformationParser: AppRouter.router.defaultRouteParser,
        theme: ThemeData.dark()
            .copyWith(scaffoldBackgroundColor: const Color(0xff28333f)),
      ),
    );
  }
}
