import 'package:flutter/material.dart';
import 'package:kido_project/widget/common_widget.dart';

class CommonListCard extends StatelessWidget {
  String leadId;
  String myLeadStatus;
  String myLeadStatusText;
  String parentName;
  String childName;
  String childAge;
  String gender;
  IconButton iconButton;
  Color myColor;
  String programCategory;
  Color myFontColor;

  CommonListCard(
      {super.key,
      required this.leadId,
      required this.myLeadStatus,
      required this.parentName,
      required this.childName,
      required this.gender,
      required this.iconButton,
      required this.childAge,
      required this.myColor,
      required this.programCategory,
      required this.myFontColor,
      required this.myLeadStatusText});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 10,
            right: 9,
            left: 9,
            bottom: 2,
          ),
          child: Container(
            height: (MediaQuery.of(context).size.height * 133.0) /
                MediaQuery.of(context).size.height,
            width: double.maxFinite,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              //color: Color.fromARGB(255, 221, 221, 221),
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 10,
                  spreadRadius: 5,
                  offset: Offset(
                    5.0,
                    5.0,
                  ),
                ),
              ],
            ),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 7,
                    left: 0,
                    right: 0,
                    bottom: 1,
                  ),
                  child: Container(
                    height: MediaQuery.of(context).size.height / 8.3,
                    width: 6,
                    decoration: BoxDecoration(
                      color: myColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 12,
                                top: 10,
                                right: 8,
                                bottom: 0,
                              ),
                              child: Text(
                                leadId,
                                style: commonLargeFonts.copyWith(
                                    color: const Color(0xFF00356A)),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text(
                                myLeadStatusText,
                                style: TextStyle(
                                  color: myFontColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                                padding: const EdgeInsets.only(
                                  right: 10.0,
                                  top: 10,
                                ),
                                child: iconButton),
                          ],
                        ),
                      ],
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 1,
                          left: 12,
                        ),
                        child: Row(
                          children: [
                            Text(
                              parentName,
                              style: commonMediumFonts.copyWith(
                                color: const Color(0xFF00356A),
                              ),
                            ),
                            const SizedBox(
                              height: 22,
                              child: VerticalDivider(
                                width: 10,
                                thickness: 3,
                                color: Colors.black,
                              ),
                            ),
                            const SizedBox(
                              width: 3,
                            ),
                            Text(childName),
                            const SizedBox(
                              width: 3,
                            ),
                            Text(gender),
                            const SizedBox(
                              width: 3,
                            ),
                            Text(childAge),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(programCategory),
                      ),
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 10,
                        ),
                        Text('Status:$myLeadStatus')
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
