import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loginpage/theme/theme.dart';
import 'package:loginpage/widgets/custom_scaffold_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<StatefulWidget> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formSignInKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return CustomScaffoldWidget(
        child: Column(
      children: [
        const Expanded(
            flex: 1,
            child: SizedBox(
              height: 10,
            )),
        Expanded(
            flex: 7,
            child: Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40.0),
                    topRight: Radius.circular(40.0),
                  )),
              child: Form(
                key: _formSignInKey,
                child: const Column(
                  children: [
                    Text(
                      'Welcome back',
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.w900,
                        color: lightColorScheme.primary,
                      ),
                    )
                  ],
                ),
              ),
            ))
      ],
    ));
  }
}
