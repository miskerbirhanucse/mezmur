import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mobile/constant/constant.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kColorBlue,
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
