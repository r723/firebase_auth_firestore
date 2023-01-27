import 'package:colours/colours.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Palette {
  // static const accentColor = Color(0xFF055dff);
  static const accentColor = Color(0xFFFFA912);

  static const accentLight = Color(0xAAFF9252);
  static const red = Colors.red;
  static const black = Colors.black;
  static const white = Colors.white;
  static const grey = Color(0xFFA8A7A7);
  static const greyLight = Color(0xAA9E9D9D);

  static const darkGrey = Color(0xFF3D3B3B);
  static const redHeart = Color(0xFFFF3B30);
  static const messageColor = Color(0xFFFF9D53);
  static const yellow = Color(0xFFFFD200);
  static const yesColor = Color(0xFFdf0025);

  static const blackWithOpacity = Color(0xFF202020);
  static const syncBoost = Color(0xFFFF5353);

  static final unselectedTabColor = const Color(0xFF3b3b3b);
  static const emptyTextColor1 = Color(0xFFa7a5a5);
  static const emptyTextColor2 = Color(0xFF6a6a6a);
  static const publicListLabelColor = Color(0xFFadadad);
  static const userProfileColor = Color(0xFFF3F4F6);
  static const ageBorderColor = Color(0xFFEFEFF7);
  static const ageInsideColor = Color(0xFFFAFBFD);
  static const addImageColor = Color(0xFFA8A7A7);
  static const addImageBgColor = Color(0xFFFAFBFD);
  static const syncClub = Color(0xFFFF9D53);
  static const greyLighter = Color(0xFFFAFBFD);
  static const purpleLighter = Color(0xFFEAEAF5);
  static const blueColor = Color(0xFF6583FE);
  static const blackPrimary = Color(0xFF3D3B3B);
  static const greyDark = Color(0xFF767272);
  static const greyBottomClose = Color(0xFFD9D9D9);
  static ThemeData appTheme = ThemeData(
    primaryColor: accentColor,
    primarySwatch: Colours.swatch("FF9252"),
    backgroundColor: Colors.white,
    brightness: Brightness.light,
    textTheme: GoogleFonts.poppinsTextTheme(),
  );
}
