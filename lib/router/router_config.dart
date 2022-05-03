import 'package:go_router/go_router.dart';
import 'package:transport_companies/app/auth/presentation/login/ui/screen/login_screen.dart';
import 'package:transport_companies/app/auth/presentation/sign_up/ui/screen/sign_up_screen.dart';
import 'package:transport_companies/app/auth/presentation/state/app_maneger_provider.dart';
import 'package:transport_companies/app/root/presentation/ui/screen/root_screen.dart';

class RouterConfig {
  late final AppManagerProvider _appManager;

  late final GoRouter router;
  RouterConfig({required AppManagerProvider provider}) {
    _appManager = provider;
    router = GoRouter(
      refreshListenable: _appManager,
      initialLocation: SignUpScreen.routePath,
      routes: [
        //root
        GoRoute(
          path: RootScreen.routePath,
          pageBuilder: RootScreen.pageBuilder,
        ),
        //auth
        GoRoute(
            path: SignUpScreen.routePath,
            pageBuilder: SignUpScreen.pageBuilder,
            routes: [
              GoRoute(
                name: LoginScreen.routeName,
                path: LoginScreen.routePath,
                pageBuilder: LoginScreen.pageBuilder,
              ),
            ]),
      ],
      debugLogDiagnostics: true,
      redirect: (state) {
        return null;
      },
    );
  }
}
