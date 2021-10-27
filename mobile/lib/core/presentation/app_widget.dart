import 'package:flutter/material.dart';
import 'package:mobile/core/router/app_router.gr.dart';

class AppWidget extends StatelessWidget {
  final _appRouter = AppRouter();

  AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        theme: ThemeData(
            textTheme: ThemeData.dark()
                .textTheme
                .copyWith(bodyText1: const TextStyle(color: Colors.white54))),
        debugShowCheckedModeBanner: false,
        routeInformationParser: _appRouter.defaultRouteParser(),
        routerDelegate: _appRouter.delegate());
  }
}
