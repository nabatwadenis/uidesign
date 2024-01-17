import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loginpage/screens/login_screen.dart';
import 'package:loginpage/screens/signup_screen.dart';
import 'package:loginpage/theme/theme.dart';
import 'package:loginpage/widgets/custom_button.dart';
import 'package:loginpage/widgets/custom_scaffold_widget.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffoldWidget(
        child: Column(
      children: [
        Flexible(
            flex: 8,
            child: Container(
              padding: const EdgeInsets.symmetric(
                vertical: 0,
                horizontal: 40.0,
              ),
              child: Center(
                  child: RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(children: [
                  TextSpan(
                      text: 'Welcome Back!\n',
                      style: TextStyle(
                        fontSize: 45.0,
                        fontWeight: FontWeight.w600,
                      )),
                  TextSpan(
                      text: '\nEnter personal details to your employee account',
                      style: TextStyle(
                        fontSize: 20,
                        // height: 0,
                      ))
                ]),
              )),
            )),
        const Flexible(
            flex: 1,
            child: Align(
              alignment: Alignment.bottomRight,
              child: Row(
                children: [
                  const Expanded(
                    child: WelcomeButton(
                      buttonText: 'Sign In',
                      onTap: SignUpScreen(),
                      color: Colors.transparent,
                      textColor: Colors.white,
                    ),
                  ),
                  Expanded(
                    child: WelcomeButton(
                      buttonText: 'Sign Up',
                      onTap: LoginScreen(),
                      color: Colors.white,
                      textColor: Colors.white,
                    ),
                  ),
                ],
              ),
            ))
      ],
    ));
  }
}
