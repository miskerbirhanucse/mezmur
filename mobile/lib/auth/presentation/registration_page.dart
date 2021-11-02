import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mobile/auth/presentation/widget/registration_widget.dart';
import 'package:mobile/core/constant/constant.dart';
import 'package:mobile/core/router/app_router.gr.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              kSizedBox,
              SvgPicture.asset(
                'assets/images/AM.svg',
                height: 139,
              ),
              const Text(
                "REGISTER",
                style: TextStyle(color: kColorWhite, fontSize: 16),
              ),
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                ),
                child: TextFormField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white10,
                    prefixIcon: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: SvgPicture.asset(
                        'assets/images/smart-phone.svg',
                      ),
                    ),
                    prefixIconConstraints: const BoxConstraints(
                      minHeight: 28,
                      minWidth: 36,
                    ),
                    hintText: "Enter Mobile No.",
                    hintStyle: const TextStyle(color: Colors.white54),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 26),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: TextFormField(
                  obscureText: true,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white10,
                    prefixIcon: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: SvgPicture.asset(
                        'assets/images/lock.svg',
                      ),
                    ),
                    prefixIconConstraints: const BoxConstraints(
                      minHeight: 28,
                      minWidth: 40,
                    ),
                    suffixIcon: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: SvgPicture.asset('assets/images/eye.svg'),
                    ),
                    suffixIconConstraints: const BoxConstraints(
                      minHeight: 28,
                      minWidth: 50,
                    ),
                    hintText: "Password",
                    hintStyle: const TextStyle(color: Colors.white54),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 18,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: TextFormField(
                  obscureText: true,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white10,
                    prefixIcon: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: SvgPicture.asset(
                        'assets/images/lock.svg',
                      ),
                    ),
                    prefixIconConstraints: const BoxConstraints(
                      minHeight: 28,
                      minWidth: 40,
                    ),
                    suffixIcon: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: SvgPicture.asset('assets/images/eye.svg'),
                    ),
                    suffixIconConstraints: const BoxConstraints(
                      minHeight: 28,
                      minWidth: 50,
                    ),
                    hintText: "Confirm Password",
                    hintStyle: const TextStyle(color: Colors.white54),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 18,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: SizedBox(
                  height: 50,
                  width: width,
                  child: ElevatedButton(
                      onPressed: () {
                        AutoRouter.of(context).push(const VerificationRoute());
                      },
                      style: ElevatedButton.styleFrom(
                        primary: kColorOrange,
                      ),
                      child: const Text("Registration")),
                ),
              ),
              kSizedBox,
              const RegistrationWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
