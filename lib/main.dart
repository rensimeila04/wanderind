import 'package:flutter/material.dart';
import 'package:wanderind/ui/pages/language_page.dart';
import 'package:wanderind/ui/pages/onboarding_page.dart';
import 'package:wanderind/ui/pages/register_page.dart';
import 'package:wanderind/ui/pages/sign_in_page.dart';
import 'package:wanderind/ui/pages/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/on-boarding': (context) => OnBoardingPage(),
        '/language': (context) => LanguagePage(),
        '/register': (context) => RegisterPage(),
        '/sign-in': (context) => SignInPage(),
      },
    );
  }
}
