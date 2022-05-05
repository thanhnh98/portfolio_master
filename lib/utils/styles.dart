import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget TextEx(String title,
    {
      double size = 16,
      FontWeight fontWeight = FontWeight.normal,
      Color color = Colors.white
    }){
  return RichText(
    text: TextSpan(
        text: title,
        style: GoogleFonts.roboto(
            fontSize: size,
            color: color,
            fontWeight: fontWeight
        )
    ),
  );
}