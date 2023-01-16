import 'package:flutter/material.dart';
import 'package:kido_project/screen/leads_screen.dart';
import 'package:kido_project/widget/common_widget.dart';

class CommonListCard extends StatelessWidget {
  String leadId;
  String myLeadStatus;
  String parentName;
  String childName;
  String childAge;
  String gender;
  IconButton iconButton;

  CommonListCard(
    this.leadId,
    this.myLeadStatus,
    this.parentName,
    this.childName,
    this.gender,
    this.iconButton,
    this.childAge,
  );
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
            height: MediaQuery.of(context).size.height / 7.4,
            width: double.maxFinite,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color.fromARGB(100, 221, 221, 221),
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
                      color: Colors.red,
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
                                    color: Colors.white),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text(
                                myLeadStatus,
                                style: commonSmallFonts.copyWith(
                                    color: Colors.red),
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
                        child: Text(
                          '$parentName',
                          style: commonMediumFonts.copyWith(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 12.0),
                          child: Text('Child:',
                              style: commonSmallFonts.copyWith(
                                  color: Colors.amber)),
                        ),
                        const SizedBox(
                          width: 3,
                        ),
                        Text(
                          '${childName}',
                          style: commonSmallFonts.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          width: 3,
                        ),
                        Text(
                          '${gender}',
                          style: commonSmallFonts.copyWith(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          width: 3,
                        ),
                        Text(
                          '$childAge',
                          style: commonSmallFonts.copyWith(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
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
