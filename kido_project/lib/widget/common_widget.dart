import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle leadIdStyle = GoogleFonts.roboto(
  fontSize: 20,
  color: Colors.white,
);

TextStyle leadNameStyle = GoogleFonts.roboto(
  fontSize: 17,
  color: Colors.white,
);

TextStyle leadChildStyle = GoogleFonts.roboto(
  color: Colors.amber.shade300,
  fontSize: 13,
  fontWeight: FontWeight.bold,
);

TextStyle leadChildNameStyle = GoogleFonts.roboto(
  color: Colors.white,
  fontSize: 13,
  fontWeight: FontWeight.bold,
);

TextStyle leadGenderStyle = GoogleFonts.roboto(
  color: Colors.white,
  fontSize: 13,
  fontWeight: FontWeight.bold,
);

TextStyle birthDiffDateStyle = GoogleFonts.roboto(
  color: Colors.white,
  fontSize: 13,
  fontWeight: FontWeight.bold,
);

TextStyle callBackFollowUpStyle = GoogleFonts.roboto(
  color: Colors.white,
  fontSize: 13,
);
TextStyle redColorStatus = GoogleFonts.roboto(
  color: Colors.red,
  fontSize: 10,
  fontWeight: FontWeight.bold,
);
AppBar appBarLeads = AppBar(
  title: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: const [
      Text(
        'LEADS',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      Icon(Icons.search),
    ],
  ),
);

TextStyle commonSmallFonts = GoogleFonts.roboto(
  color: Colors.white,
  fontSize: 13,
);

TextStyle commonMediumFonts = GoogleFonts.roboto(
  color: Colors.white,
  fontSize: 17,
);

TextStyle commonLargeFonts = GoogleFonts.roboto(
  color: Colors.white,
  fontSize: 20,
);