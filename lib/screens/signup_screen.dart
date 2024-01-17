
import 'package:flutter/material.dart';
import 'package:loginpage/widgets/custom_scaffold_widget.dart';

class SignUpScreen extends StatefulWidget{
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();

}
class _SignUpScreenState extends State<SignUpScreen>{
  @override
  Widget build(BuildContext context) {
    return const CustomScaffoldWidget(
      child: Text('Sign Up')
    );
  }
  
}