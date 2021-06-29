import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

double defaultMargin = 30.0;
double defaultRadius = 22.0;

// NOTE: COLORS
Color kBlackColor = Color(0xff2C3A59);
Color kWhiteColor = Color(0xffffffff);
Color kGreyColor = Color(0xff808BA2);
Color kBlueColor = Color(0xff1F8DF5);
Color kLightBlueColor = Color(0xff9ED0FF);
Color kBackgroundColor = Color(0xffF8FAFC);
Color kChatBackgroundColor = Color(0xffEAEFF3);

// NOTE: TEXT STYLES

TextStyle blackTextStyle = GoogleFonts.poppins(
  color: kBlackColor,
);
TextStyle greyTextStyle = GoogleFonts.poppins(
  color: kGreyColor,
);
TextStyle whiteTextStyle = GoogleFonts.poppins(
  color: kWhiteColor,
);
TextStyle blueTextStyle = GoogleFonts.poppins(
  color: kLightBlueColor,
);

// NOTE: FONT WEIGHTS
FontWeight thin = FontWeight.w100;
FontWeight extraLight = FontWeight.w200;
FontWeight light = FontWeight.w300;
FontWeight regular = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
FontWeight bold = FontWeight.w700;
FontWeight extraBold = FontWeight.w800;
FontWeight black = FontWeight.w900;
