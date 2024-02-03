import 'dart:async';

import 'package:flutter/material.dart';
import 'package:wanderind/shared/theme.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.pushNamed(context, '/on-boarding');
    });
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.grayscaleColors[50],
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage(
                  'assets/images/logo.png',
                ),
              )
            ],
          ),
        ));
  }
}
