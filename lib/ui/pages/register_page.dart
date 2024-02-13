import 'package:flutter/material.dart';
import 'package:wanderind/shared/theme.dart';
import 'package:wanderind/ui/widgets/button_big.dart';
import 'package:icons_plus/icons_plus.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/icon_logo.png',
                width: 126,
                height: 118.85,
              ),
              SizedBox(
                height: 24,
              ),
              Text(
                "Let's get started",
                style:
                    blackTextStyle.copyWith(fontSize: 18, fontWeight: medium),
              ),
              SizedBox(
                height: 32,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 24, vertical: 18),
                          hintText: "Email/Phone Number",
                          hintStyle: grayTextStyle.copyWith(
                              fontSize: 16, fontWeight: regular),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(36)),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: const Color(0xFF1A80E4)),
                              borderRadius: BorderRadius.circular(36))),
                      style: blackTextStyle.copyWith(
                          fontSize: 16, fontWeight: regular),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    ButtonBig(
                      buttonText: 'Create Account',
                      onPressed: () {},
                    ),
                    SizedBox(
                      height: 32,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Divider(),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Text(
                          'Or',
                          style: grayTextStyle.copyWith(
                              fontSize: 16, fontWeight: regular),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Expanded(
                          child: Divider(),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Brand(
                      Brands.facebook,
                      size: 40,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Brand(
                      Brands.google,
                      size: 40,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      BoxIcons.bxl_apple,
                      size: 40,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account?",
                    style: captionTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: regular,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/sign-in');
                    },
                    child: Text('Sign In', style: blueTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold
                    )),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
