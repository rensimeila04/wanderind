import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:wanderind/shared/theme.dart';
import 'package:wanderind/ui/widgets/button_big.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool? rememberMe = false;
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 24),
          child: Center(
            child: SingleChildScrollView(
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
                    "Welcome Back!",
                    style: blackTextStyle.copyWith(
                        fontSize: 18, fontWeight: medium),
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
                                  borderSide: BorderSide(
                                      color: const Color(0xFF1A80E4)),
                                  borderRadius: BorderRadius.circular(36))),
                          style: blackTextStyle.copyWith(
                              fontSize: 16, fontWeight: regular),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        TextFormField(
                          obscureText: _obscureText,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 24, vertical: 18),
                            hintText: "Password",
                            hintStyle: grayTextStyle.copyWith(
                                fontSize: 16, fontWeight: regular),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(36)),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: const Color(0xFF1A80E4)),
                              borderRadius: BorderRadius.circular(36),
                            ),
                            suffixIcon: Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: IconButton(
                                icon: Icon(
                                  _obscureText
                                      ? Iconsax.eye_outline
                                      : Iconsax.eye_slash_outline,
                                  color: AppColors.grayscaleColors[500],
                                ),
                                onPressed: () {
                                  setState(() {
                                    _obscureText = !_obscureText;
                                  });
                                },
                              ),
                            ),
                          ),
                          style: blackTextStyle.copyWith(
                              fontSize: 16, fontWeight: regular),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Checkbox(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  side: MaterialStateBorderSide.resolveWith(
                                      (Set<MaterialState> states) {
                                    return const BorderSide(
                                        color: Color(0xFF79838C));
                                  }),
                                  value: rememberMe,
                                  activeColor: AppColors.primaryColors[500],
                                  onChanged: (newValue) {
                                    setState(() {
                                      rememberMe = newValue;
                                    });
                                  },
                                ),
                                Text(
                                  'Remember me',
                                  style: grayTextStyle.copyWith(
                                    fontSize: 16,
                                    fontWeight: bold,
                                  ),
                                )
                              ],
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text('Forget Password?',
                                  style: blueTextStyle.copyWith(
                                      fontSize: 16, fontWeight: bold)),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        ButtonBig(
                          buttonText: 'Login',
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
                          height: 16,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Don’t have an account?",
                              style: captionTextStyle.copyWith(
                                fontSize: 16,
                                fontWeight: regular,
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/register');
                              },
                              child: Text('Sign up',
                                  style: blueTextStyle.copyWith(
                                      fontSize: 16, fontWeight: semiBold)),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
