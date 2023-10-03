import 'package:go_router/go_router.dart';
import 'package:running_app/features/Get_started/presentation/views/get_started_view.dart';
import 'package:running_app/features/Run/presentation/views/run_view.dart';
import 'package:running_app/features/log_in/presentation/views/log_in_view.dart';
import 'package:running_app/features/sign_up/presentation/views/sign_up_view.dart';

abstract class AppRouter {
  static const kRunview = '/runview';
  static const kLoginView = '/loginView';
  static const ksignupView = '/ahmad';
  static final router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: "/",
        builder: (context, state) => const GetStartedView(),
      ),
      GoRoute(
        path: kRunview,
        builder: (context, state) => const RunView(),
      ),
      GoRoute(
        path: kLoginView,
        builder: (context, state) => const LogInView(),
      ),
      GoRoute(
        path: ksignupView,
        builder: (context, state) => const SiginUpView(),
      ),
    ],
  );
}
