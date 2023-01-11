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
      Text(textDisp),
      Text(
        isRequired ? ' *' : '',
        style: TextStyle(
          color: isRequired ? Colors.red : null,
        ),
      )
    ],
  );
}

commonTextFormField(
    {required String hintText,
    required Color hintTextColor,
    required TextEditingController myController,
    required Color backgroundColor,
    required Color textColor,
    required double topPadding,
    required double bottomPadding,
    required double rightPadding,
    required double leftPadding}) {
  GoogleFonts.roboto();

  return Padding(
    padding: EdgeInsets.only(
        top: topPadding,
        bottom: bottomPadding,
        left: leftPadding,
        right: rightPadding),
    child: TextFormField(
      validator: (value) {
        if (value!.isEmpty) {
          return 'please enter $hintText';
        } else {
          return null;
        }
      },
      style: TextStyle(
        color: textColor,
      ),
      controller: myController,
      decoration: InputDecoration(
        filled: true,
        fillColor: backgroundColor,
        hintText: hintText,
        hintStyle: TextStyle(color: hintTextColor),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: Colors.black,
            )),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Colors.blue),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Colors.red,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Colors.red,
          ),
        ),
      ),
    ),
  );
}

commonSubmitButton({
  required double width,
  required double height,
  required String textbtn,
  required Color buttonBackgroundColor,
  required double borderRadiusSize,
  required GlobalKey<FormState> globalKey,
}) {
  return GestureDetector(
    onTap: () {
      if (globalKey.currentState!.validate()) {}
    },
    child: Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: buttonBackgroundColor,
        borderRadius: BorderRadius.circular(borderRadiusSize),
      ),
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
    ),
  );
}

//String? gender = 'male';
enum gender { male, female }

class myImageWidget extends StatelessWidget {
  String imgUrl;
  double width;
  double height;

  myImageWidget({
    required this.imgUrl,
    required this.height,
    required this.width,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imgUrl,
      width: width,
      height: height,
    );
  }
}

Row dashBoardNotificationList(BuildContext context) {
  return Row(
    children: [
      Expanded(
        child: SizedBox(
          height: 300,
          width: double.maxFinite,
          //width: MediaQuery.of(context).size.width / 14 - 10.10,
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: 14,
            itemBuilder: (context, index) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'LD003171',
                          style: commonMediumFonts.copyWith(
                            color: const Color(0xFF00356A),
                            fontStyle: FontStyle.italic,
                            fontSize: 19,
                          ),
                        ),
                        Text(
                          '1234567890',
                          style: commonMediumFonts.copyWith(
                            color: const Color(0xFF00356A),
                            fontStyle: FontStyle.italic,
                            fontSize: 19,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 18, bottom: 18, left: 18, right: 5),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'Renu Pathak',
                          style: commonMediumFonts.copyWith(
                            color: const Color(0xFF00356A),
                            fontSize: 19,
                          ),
                        ),
                        Text(
                          'To call back/Follow up',
                          style: commonMediumFonts.copyWith(
                            color: const Color(0xFF00356A),
                            fontSize: 19,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              );
            },
          ),
        ),
      ),
    ],
  );
}
