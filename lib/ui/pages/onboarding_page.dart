import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wanderind/shared/theme.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/images/illustration_1.svg',
              width: 403.5,
              height: 269,
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              'Start Your Adventure',
              style: blackTextStyle.copyWith(
                fontSize: 24,
                fontWeight: semiBold,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              "It's time to explore the world more easily. \nLet's begin your journey to your dream\ndestination!",
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
              margin: EdgeInsets.symmetric(horizontal: 24.0),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primaryColors[500],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(36.0), // Border radius
                  ),
                ),
                child: Container(
                  width: double.infinity,
                  height: 56,
                  child: Center(
                    child: Text(
                      'Get Started',
                      style: whiteTextStyle.copyWith(
                        fontSize: 20,
                        fontWeight: semiBold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
