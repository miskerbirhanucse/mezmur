import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:mobile/core/constant/constant.dart';
import 'package:mobile/core/router/app_router.gr.dart';

class RegistrationWidget extends StatefulWidget {
  const RegistrationWidget({Key? key}) : super(key: key);

  @override
  State<RegistrationWidget> createState() => _RegistrationWidgetState();
}

class _RegistrationWidgetState extends State<RegistrationWidget> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Column(
      children: [
        Row(
          children: [
            Checkbox(
                side: const BorderSide(color: kColorOrange),
                value: _isChecked,
                onChanged: (bool? value) {
                  setState(() {
                    _isChecked = value!;
                  });
                }),
            TextButton(
              onPressed: () {},
              child: const Text(
                "Agree to the terms of service & privacy",
                style: TextStyle(color: kColorWhite, fontSize: 16),
              ),
            ),
          ],
        ),
        SizedBox(height: height / 9),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Already have an account ?",
              style: TextStyle(color: kColorWhite, fontSize: 16),
            ),
            TextButton(
              onPressed: () {
                AutoRouter.of(context).pushAndPopUntil(const LoginRoute(),
                    predicate: (_) => false);
              },
              child: const Text(
                "Login",
                style: TextStyle(
                    color: kColorOrange,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
