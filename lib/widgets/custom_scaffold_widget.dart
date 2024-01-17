import 'package:flutter/material.dart';

class CustomScaffoldWidget extends StatelessWidget{
  const CustomScaffoldWidget({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Image.asset('assets/images/bg1.png',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,),

          SafeArea(child: child)
        ],
      ),
    );
  }
  
}