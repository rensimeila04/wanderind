import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wanderind/shared/theme.dart';
import 'package:wanderind/ui/widgets/button_big.dart';
import 'package:wanderind/ui/widgets/dropdown.dart';

class LanguagePage extends StatelessWidget {
  const LanguagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/images/illustration_2.svg',
              width: 403.5,
              height: 269,
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              'Start with WanderInd',
              style: blackTextStyle.copyWith(
                fontSize: 24,
                fontWeight: semiBold,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              "Embark on easy exploration to\nyour dream destinations",
              textAlign: TextAlign.center,
              style: grayTextStyle.copyWith(
                fontSize: 16,
                fontWeight: medium,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: [
                  DropdownCustom(),
                  SizedBox(
                    height: 24,
                  ),
                  ButtonBig(
                    buttonText: 'Continue',
                    onPressed: () {
                      Navigator.pushNamed(context, '/register');
                    },
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
