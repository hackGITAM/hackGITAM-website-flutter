import 'package:flutter/material.dart';

class MainTheme {
  static ThemeData get darkTheme {
    return ThemeData(
        backgroundColor: const Color(0xFF2E3440),
        //Top gradient color for Heading 1
        indicatorColor: const Color(0xFFCECECE),
        //Top gradient color for Heading 2
        shadowColor: const Color(0xFFB48EAD),
        //Alternate Button Color
        cardColor: const Color(0xFF81A1C1),
        textTheme: const TextTheme(
          headline1: TextStyle(
            fontFamily: "HandelGothic",
            fontSize: 60,
          ),
          headline2: TextStyle(
            fontFamily: "HandelGothic",
            fontSize: 60,
          ),
          bodyText1: TextStyle(
            fontFamily: "HandelGothic",
            fontSize: 27,
            color: Color(0xFFCECECE),
          ),

          // button: TextStyle(
          //   fontFamily: "HandelGothic",
          //   fontSize: 30,
          //   color: Color(0xFF2E3440),
          // ),
        ),
        textButtonTheme: TextButtonThemeData(
            style: TextButton.styleFrom(
          minimumSize: const Size(217, 69),
          textStyle: const TextStyle(
            fontFamily: "HandelGothic",
            fontSize: 30,
            color: Color(0xFF2E3440),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          foregroundColor: const Color(0xFF2E3440),
          backgroundColor: const Color(0xFFD08770),
          //backgroundColor: const Color(0xFF81A1C1),
        )));
  }
}
