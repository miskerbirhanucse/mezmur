import 'package:auto_route/annotations.dart';
import 'package:mobile/auth/presentation/login_page.dart';
import 'package:mobile/auth/presentation/registration_page.dart';
import 'package:mobile/auth/presentation/verification_page.dart';
import 'package:mobile/splash/presentation/splash_page.dart';
//part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    MaterialRoute(page: SplashPage, initial: true),
    MaterialRoute(page: LoginPage,path: '/login'),
    MaterialRoute(page: VerificationPage,path: '/verfication'),
    MaterialRoute(page: RegistrationPage,path:'/register'),
    //AutoRoute(page: BookDetailsPage),//
  ],
)
// extend the generated private router
class $AppRouter {}
