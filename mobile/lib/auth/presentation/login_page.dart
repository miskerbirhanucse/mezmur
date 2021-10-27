import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mobile/core/constant/constant.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: kColorBlue,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              kSizedBox,
              SvgPicture.asset(
                'assets/images/AM.svg',
                height: 139,
              ),
              kSizedBox,
              const Text(
                "LOGIN",
                style: TextStyle(color: kColorWhite, fontSize: 16),
              ),
              const SizedBox(
                height: 60,
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
                child: SizedBox(
                  height: 40,
                  width: width,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: kColorOrange,
                      ),
                      child: const Text("LOGIN")),
                ),
              ),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Forgot Password ?",
                    style: TextStyle(color: kColorWhite, fontSize: 16),
                  )),
              const SizedBox(
                height: 120,
              ),
              const Text(
                "Don't have an account ?",
                style: TextStyle(color: kColorWhite, fontSize: 16),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  "Register",
                  style: TextStyle(
                      color: kColorOrange,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
