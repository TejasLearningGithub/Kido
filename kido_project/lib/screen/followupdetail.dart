import 'package:flutter/material.dart';
import 'package:kido_project/widget/common_widget.dart';
import 'package:timeline_tile/timeline_tile.dart';

class Followupdetail extends StatefulWidget {
  const Followupdetail({super.key});

  @override
  State<Followupdetail> createState() => _FollowupdetailState();
}

class _FollowupdetailState extends State<Followupdetail> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color.fromARGB(100, 249, 249, 249),
      appBar: AppBar(
        title: const Text('Follow up Detail'),
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.white,
          size: 35,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: height * 0.020,
                bottom: height * 0.0199,
                right: width * 0.040,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: width * 0.89,
                    height: height * 1.51 / 4.3 - 11.9,
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.zero,
                        bottomLeft: Radius.zero,
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: height * 0.020,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              //mainAxisSize: MainAxisSize.min,
                              //mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: width * 0.018 - 0.01),
                                  child: Text(
                                    'LD003171',
                                    style: commonMediumFonts.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                const Text('YTC'),
                              ],
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.edit_note_sharp,
                                  size: 22,
                                ),
                                SizedBox(
                                  width: width * 0.015,
                                ),
                                const Icon(
                                  Icons.star_border_outlined,
                                  color: Colors.amber,
                                  size: 25,
                                ),
                                SizedBox(
                                  width: width * 0.015,
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: height * 0.024,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: width * 0.011),
                          child: Row(
                            children: [
                              Text(
                                'Shikha(LD002320)',
                                style: commonMediumFonts.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: width * 0.011),
                          child: Row(
                            children: [
                              Text(
                                'Child:',
                                style: commonSmallFonts.copyWith(
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                'Vinit(M) 2.5 Years',
                                style: commonSmallFonts.copyWith(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: width * 0.01),
                          child: Row(
                            children: [
                              Icon(
                                Icons.whatsapp,
                                color: Colors.brown,
                                size: 15,
                              ),
                              Text(
                                '1234567890',
                                style: commonSmallFonts.copyWith(
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Container(
                                width: 4,
                                height: 10,
                                child: VerticalDivider(
                                  color: Colors.white,
                                  thickness: 2,
                                ),
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Text(
                                '1234567890',
                                style: commonSmallFonts.copyWith(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: width * 0.01),
                          child: Row(
                            children: [
                              Text(
                                'Shikha@gmail.com',
                                style: commonSmallFonts.copyWith(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: width * 0.01),
                          child: Row(
                            children: [
                              Text(
                                'Kandivali,Mumbai,Maharastra  ',
                                style: commonSmallFonts.copyWith(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: width * 0.01),
                          child: Row(
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'LD Date:',
                                style: commonSmallFonts.copyWith(
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                '05 Mar 2022',
                                style: commonSmallFonts.copyWith(
                                  color: Colors.white,
                                ),
                              ),
                              // Text(
                              //   'Last Follow up:',
                              //   style: commonSmallFonts.copyWith(
                              //     color: Colors.white,
                              //   ),
                              // ),
                              // FittedBox(
                              //   child: Text(
                              //     '05 Mar 2022',
                              //     style: commonSmallFonts.copyWith(
                              //       color: Colors.white,
                              //     ),
                              //   ),
                              // ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                left: width * 0.01,
                                right: width * 0.01,
                                top: height * 0.02,
                              ),
                              child: Container(
                                width: 40,
                                height: 40,
                                decoration: const BoxDecoration(
                                  color: Color.fromARGB(100, 249, 249, 249),
                                  shape: BoxShape.circle,
                                ),
                                child: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.call,
                                    size: 19,
                                    color: Color.fromARGB(100, 189, 83, 25),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: width * 0.01,
                                right: width * 0.01,
                                top: height * 0.02,
                              ),
                              child: Container(
                                width: 40,
                                height: 40,
                                decoration: const BoxDecoration(
                                  color: Color.fromARGB(100, 249, 249, 249),
                                  shape: BoxShape.circle,
                                ),
                                child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.chat_sharp,
                                        color:
                                            Color.fromARGB(100, 189, 83, 25))),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: width * 0.01,
                                right: width * 0.01,
                                top: height * 0.02,
                              ),
                              child: Container(
                                width: 40,
                                height: 40,
                                decoration: const BoxDecoration(
                                  color: Color.fromARGB(100, 249, 249, 249),
                                  shape: BoxShape.circle,
                                ),
                                child: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                      Icons.mark_email_read_outlined,
                                      color: Color.fromARGB(100, 189, 83, 25)),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: width * 0.01,
                                right: width * 0.03,
                                top: height * 0.02,
                              ),
                              child: Container(
                                width: 40,
                                height: 40,
                                decoration: const BoxDecoration(
                                  color: Color.fromARGB(100, 249, 249, 249),
                                  shape: BoxShape.circle,
                                ),
                                child: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.whatsapp,
                                    color: Color.fromARGB(
                                      100,
                                      189,
                                      83,
                                      25,
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: width * 0.03),
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("Program"),
                      Text("source"),
                      Text("status"),
                      Text("sub-status"),
                    ],
                  ),
                  SizedBox(
                    width: width * 0.195,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text('Category Name -'),
                          Text('Program Name'),
                        ],
                      ),
                      Row(
                        children: [
                          Text('Source Category -'),
                          Text('Source Name'),
                        ],
                      ),
                      FittedBox(
                        child: Text(
                          "Not interested/Need mismatch",
                          style: commonSmallFonts.copyWith(
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Text('Not eligible')
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.056,
            ),
            // const SizedBox(
            //   height: 28,
            // ),
            Padding(
              padding: EdgeInsets.only(left: width * 0.02),
              child: Row(
                children: const [
                  Text(
                    'Action Plan Taken Will Be Here',
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 38,
            ),
            Padding(
              padding: EdgeInsets.only(right: width * 0.012),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 50,
                    width: 180,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(
                        100,
                        189,
                        83,
                        25,
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: const Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Add Follow Up',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.030,
            ),
            Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width - 0.5,
                  height: height * 0.055,
                  decoration: const BoxDecoration(color: Colors.blue),
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: height * 0.01,
                      left: width * 0.0310,
                    ),
                    child: const Text(
                      'Follow up history',
                      style: TextStyle(
                        fontSize: 19,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.015,
            ),
            Padding(
              padding: EdgeInsets.only(left: width * 0.050),
              child: TimelineTile(
                axis: TimelineAxis.vertical,
                indicatorStyle: IndicatorStyle(
                  //color: Colors.blue,
                  height: height * 0.0425,
                  width: width * 0.0425,
                  iconStyle: IconStyle(
                    fontSize: 30,
                    color: Colors.white,
                    iconData: Icons.insert_emoticon,
                  ),
                ),
                isFirst: true,
                afterLineStyle: const LineStyle(
                  color: Colors.blue,
                ),
                alignment: TimelineAlign.start,
                endChild: Row(
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 5, bottom: 20),
                      height: 75,
                      width: MediaQuery.of(context).size.width / 1.8 - 0.09,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          SizedBox(
                            height: 19,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 8.0, top: 0.0),
                            child: Text(
                              '17 Aug 2021 01:27 pm',
                            ),
                          ),
                          Text(
                            'SMS/WHATSAPP/E-Mail Message Sent',
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: width * 0.050),
              child: TimelineTile(
                axis: TimelineAxis.vertical,
                indicatorStyle: IndicatorStyle(
                  color: Colors.blue,
                  height: height * 0.0425,
                  width: width * 0.0425,
                ),
                beforeLineStyle: const LineStyle(color: Colors.blue),
                afterLineStyle: const LineStyle(color: Colors.blue),
                alignment: TimelineAlign.start,
                endChild: Row(
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10, bottom: 25),
                      height: 75,
                      width: MediaQuery.of(context).size.width / 1.8 - 0.09,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 8.0, top: 8.0),
                            child: Text(
                              '12 Aug 2021 01:27 pm',
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 8.0),
                            child: Text(
                              'SMS/WHATS APP/E-Mail Message Sent',
                              style: TextStyle(fontSize: 14),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: width * 0.050),
              child: TimelineTile(
                axis: TimelineAxis.vertical,
                indicatorStyle: IndicatorStyle(
                  color: Colors.white,
                  height: height * 0.0425,
                  width: width * 0.0425,
                ),
                isLast: false,
                beforeLineStyle: const LineStyle(
                  color: Colors.blue,
                ),
                afterLineStyle: const LineStyle(
                  color: Colors.white,
                ),
                alignment: TimelineAlign.start,
                endChild: Row(
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10, bottom: 30),
                      height: 82,
                      width: MediaQuery.of(context).size.width / 1.8 - 0.09,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                left: width * 0.01, top: height * 0.01),
                            child: const FittedBox(
                              child: Text(
                                '11 Aug 2021 08:52 pm',
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 8),
                            child: Text(
                              'YTC',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: width * 0.018),
                            child: const Text(
                              'Nidhi TRF TO ujwala parent didn\'t\nanswer my call',
                              style: TextStyle(
                                fontSize: 13,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
