import 'package:flutter/material.dart';
import 'package:kido_project/widget/common_widget.dart';

class CommonListCard extends StatelessWidget {
  final String leadId;
  final String status;
  final bool isFavourite;
  final String parentName;
  final String childName;
  final String gender;
  final String age;
  final String callStatus;
  final String socialMedicalCampaignInfo;
  // final DateTime ldDate;
  // final DateTime lastFollowUpDate;
  // final DateTime nextFollowUpDate;
  final String ldDate;
  final String lastFollowUpDate;
  final String nextFollowUpDate;
  //final Function(bool) isFavouriteSelected;

  const CommonListCard({
    super.key,
    required this.leadId,
    required this.status,
    required this.isFavourite,
    required this.parentName,
    required this.childName,
    required this.gender,
    required this.age,
    required this.callStatus,
    required this.socialMedicalCampaignInfo,
    required this.ldDate,
    required this.lastFollowUpDate,
    required this.nextFollowUpDate,
  });

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
            height: MediaQuery.of(context).size.height / 5,
            width: double.maxFinite,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color:const Color(0xFF00356A),
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
                    height: MediaQuery.of(context).size.height / 5.5,
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
                                status,
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
                              child: GestureDetector(
                                onTap: () {},
                                child: Image.asset(
                                  'assets/images/star.png',
                                  width: 25,
                                  height: 25,
                                ),
                              ),
                            ),
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
                        child: Text(parentName,
                            style: commonMediumFonts.copyWith(
                              color: Colors.white,
                            )),
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
                          childName,
                          style: commonSmallFonts.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          width: 3,
                        ),
                        Text(
                          '($gender)',
                          style: commonSmallFonts.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          width: 3,
                        ),
                        Text(
                          age,
                          style: commonSmallFonts.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: Text(
                              'Status:',
                              style: commonSmallFonts.copyWith(
                                  color: Colors.amber),
                            ),
                          ),
                        ),
                        Text(
                          callStatus,
                          style:
                              commonSmallFonts.copyWith(color: Colors.white),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: Text('Social Medical Campaign:',
                                style: commonSmallFonts.copyWith(
                                  color: Colors.amber,
                                )),
                          ),
                        ),
                        Text(
                          socialMedicalCampaignInfo,
                          style: commonSmallFonts.copyWith(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: Text('LD Date:',
                                style: commonSmallFonts.copyWith(
                                  color: Colors.amber,
                                )),
                          ),
                        ),
                        Text(
                          ldDate,
                          style: commonSmallFonts.copyWith(
                            color: Colors.white,
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 4),
                            child: Text('Last Follow Up:',
                                style: commonSmallFonts.copyWith(
                                    color: Colors.amber)),
                          ),
                        ),
                        Text(
                          lastFollowUpDate.toString(),
                          style: commonSmallFonts.copyWith(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: Text('Next Follow Up On:',
                                style: commonSmallFonts.copyWith(
                                  color: Colors.amber,
                                )),
                          ),
                        ),
                        Text(
                          nextFollowUpDate.toString(),
                          style: commonSmallFonts.copyWith(
                            color: Colors.white,
                          ),
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
