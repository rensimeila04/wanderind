import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppColors {
  // Primary Colors
  static Map<int, Color> primaryColors = {
    50: Color(0xFFE8F2FC),
    100: Color(0xFFD1E6FA),
    200: Color(0xFFA3CCF5),
    300: Color(0xFF76B3EF),
    400: Color(0xFF4899EA),
    500: Color(0xFF1A80E4),
    600: Color(0xFF1566B7),
    700: Color(0xFF104D89),
    800: Color(0xFF0A335C),
    900: Color(0xFF051A2E),
    950: Color(0xFF030D17),
  };

  // Secondary Colors
  static Map<int, Color> secondaryColors = {
    50: Color(0xFFFEF9E6),
    100: Color(0xFFFDF3CE),
    200: Color(0xFFFCE697),
    300: Color(0xFFFADA66),
    400: Color(0xFFF8CE35),
    500: Color(0xFFF0BD08),
    600: Color(0xFFC09806),
    700: Color(0xFF8F7105),
    800: Color(0xFF5E4A03),
    900: Color(0xFF312702),
    950: Color(0xFF191401),
  };

  // Grayscale Colors
  static Map<int, Color> grayscaleColors = {
    50: Color(0xFFFFFFFF),
    100: Color(0xFFE4E6E7),
    200: Color(0xFFC8CCD0),
    300: Color(0xFFAFB5BB),
    400: Color(0xFF949CA3),
    500: Color(0xFF79838C),
    600: Color(0xFF616970),
    700: Color(0xFF494F55),
    800: Color(0xFF2F3337),
    900: Color(0xFF181A1B),
    950: Color(0xFF0C0D0E),
  };
}

// Font Weights
FontWeight light = FontWeight.w300;
FontWeight regular = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
FontWeight bold = FontWeight.w700;
FontWeight extraBold = FontWeight.w800;
FontWeight black = FontWeight.w900;

TextStyle blackTextStyle = GoogleFonts.montserrat(
  color: AppColors.grayscaleColors[900],
);

TextStyle whiteTextStyle = GoogleFonts.montserrat(
  color: AppColors.grayscaleColors[50],
);

TextStyle captionTextStyle = GoogleFonts.montserrat(
  color: AppColors.grayscaleColors[600],
);

TextStyle grayTextStyle = GoogleFonts.montserrat(
  color: AppColors.grayscaleColors[500],
);

TextStyle blueTextStyle = GoogleFonts.montserrat(
  color: AppColors.primaryColors[500],
);