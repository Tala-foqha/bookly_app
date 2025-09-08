// core/utils/app_styles.dart

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppStyles {
  static final TextStyle bold64 = GoogleFonts.roboto(
    fontWeight: FontWeight.bold,
    fontSize: 64,
  );
  static final TextStyle bold24 = GoogleFonts.roboto(
    fontWeight: FontWeight.bold,
    fontSize: 24,
  );
  static final TextStyle regulateIlatic10 = GoogleFonts.roboto(
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.italic,
    color: Colors.black,
    fontSize: 10,
  );
   static final TextStyle bold14 = GoogleFonts.roboto(
    fontWeight: FontWeight.w700,
    fontStyle: FontStyle.italic,
    fontSize: 14,
  );

  static final TextStyle boldIlatic10 = GoogleFonts.roboto(
    fontWeight: FontWeight.w700,
    fontStyle: FontStyle.italic,
    fontSize: 10,
    color: Color(0xff9A9A9A)
  );
  static TextStyle regularItalic10 =  GoogleFonts.roboto(
    fontSize: 10,
    fontWeight: FontWeight.w400,
       fontStyle: FontStyle.italic,
    color: Colors.black,
  );


   static final TextStyle title20 = GoogleFonts.roboto(
    fontSize: 10,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.italic,
    color: Colors.black,
  );

  /// 📌 العنوان الفرعي (UNSPEAKABLE HORRORS)
  static final TextStyle subTitle10 = GoogleFonts.roboto(
    fontSize: 10,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.italic,
    color: Colors.black,
  );

  /// 📌 المؤلف (Author : S.A. Barnes ; Stacey Kade)
  static final TextStyle authorBold16 = GoogleFonts.roboto(
    fontSize: 16,
    fontWeight: FontWeight.w700,   // Bold
    fontStyle: FontStyle.normal,
    color: Colors.black);

    static final TextStyle bold10 = GoogleFonts.roboto(
    fontSize: 10,
    fontWeight: FontWeight.w700,   // Bold
    fontStyle: FontStyle.normal,
    color: Color(0xff998E8E));
static final TextStyle Regular15 = GoogleFonts.roboto(
    fontSize: 15,
    fontWeight: FontWeight.w400,   // Bold
  
    color: Color(0xff000000));


  }