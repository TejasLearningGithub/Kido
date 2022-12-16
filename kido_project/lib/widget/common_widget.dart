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

commonName(String textDisp, bool isRequired) {
  GoogleFonts.roboto();

  return Row(
    children: [
      Text('${textDisp}'),
      Text(
        isRequired ? ' *' : '',
        style: TextStyle(
          color: isRequired ? Colors.red : null,
        ),
      )
    ],
  );
}

commonTextFormField(String hintText) {
  GoogleFonts.roboto();
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: TextFormField(
      decoration: InputDecoration(
        hintText: hintText,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: Colors.black,
            )),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.blue),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: Colors.red,
          ),
        ),
      ),
    ),
  );
}

commonSubmitButton(double width, double height, String textbtn) {
  return GestureDetector(
    onTap: () {},
    child: Container(
      height: height,
      width: 361,
      child: Align(
        alignment: Alignment.center,
        child: Text(
          textbtn,
          style: commonMediumFonts.copyWith(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      decoration: BoxDecoration(
        color: Color(0xFF00356A),
        borderRadius: BorderRadius.circular(27),
      ),
    ),
  );
}

//String? gender = 'male';
enum gender { male, female }
