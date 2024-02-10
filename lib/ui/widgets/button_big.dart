import 'package:flutter/material.dart';
import 'package:wanderind/shared/theme.dart';

class ButtonBig extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;

  const ButtonBig({super.key, 
    required this.buttonText,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primaryColors[500],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(36.0),
        ),
      ),
      child: Container(
        width: double.infinity,
        height: 56,
        child: Center(
          child: Text(
            buttonText,
            style: whiteTextStyle.copyWith(
              fontSize: 20,
              fontWeight: semiBold,
            ),
          ),
        ),
      ),
    );
  }
}
