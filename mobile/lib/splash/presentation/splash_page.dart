import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mobile/core/constant/constant.dart';
import 'package:mobile/core/router/app_router.gr.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(
        const Duration(seconds: 3),
        () => AutoRouter.of(context)
            .pushAndPopUntil(const LoginRoute(), predicate: (route) => false));
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const Spacer(),
              SvgPicture.asset("assets/images/AM.svg"),
              const Spacer(),
              const Text(
                "Welcome To",
                style: kTextStyle,
              ),
              const Text(
                "Apostolicmezmure",
                style: kTextStyle,
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
