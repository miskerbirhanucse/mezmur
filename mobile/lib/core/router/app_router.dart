import 'package:auto_route/annotations.dart';
import 'package:mobile/auth/presentation/login_page.dart';
import 'package:mobile/splash/presentation/splash_page.dart';
//part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    MaterialRoute(page: SplashPage, initial: true),
    MaterialRoute(page: LoginPage, initial: true),
    //AutoRoute(page: BookDetailsPage),//
  ],
)
// extend the generated private router
class $AppRouter {}
