
import 'package:flutter/material.dart';
import 'package:food_app/utils/font_weight_helper.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AppStyls {
 static  TextStyle dmSans12Regular=GoogleFonts.dmSans(
   fontSize: 12,
   fontWeight: FontWeightHelper.regular
 );
 static  TextStyle dmSans18bold=GoogleFonts.dmSans(
   fontSize: 18,
   fontWeight:  FontWeightHelper.bold
 );
static  TextStyle dmSans24medium=GoogleFonts.dmSans(
   fontSize: 24,
   fontWeight: FontWeightHelper.medium
 );
static  TextStyle roboto12medium=GoogleFonts.roboto(
   fontSize: 12,
   fontWeight:  FontWeightHelper.medium
 );

 static  TextStyle roboto14medium=GoogleFonts.roboto(
   fontSize: 14,
   fontWeight:  FontWeightHelper.medium
 );
}
