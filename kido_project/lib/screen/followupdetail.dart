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
    return Scaffold(
      backgroundColor: Color.fromARGB(100, 249, 249, 249),
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
              padding: const EdgeInsets.only(
                top: 20,
                left: 0,
                bottom: 20,
                right: 40,
              ),
              child: Container(
                width: 370,
                height: 230,
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
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          //mainAxisSize: MainAxisSize.min,
                          //mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Text(
                                'LD003171',
                                style: commonMediumFonts.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Text('YTC'),
                          ],
                        ),
                        Row(
                          children: const [
                            Icon(
                              Icons.note_add,
                              size: 22,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.edit_note_sharp,
                              size: 22,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.star_border_outlined,
                              color: Colors.amber,
                              size: 25,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
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
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Row(
                        children: [
                          Text(
                            'Child:',
                            style: commonSmallFonts.copyWith(
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            'Vinit(M) 2 years 5 months',
                            style: commonSmallFonts.copyWith(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Row(
                        children: [
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
                      padding: const EdgeInsets.only(left: 8),
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
                      padding: const EdgeInsets.only(left: 8),
                      child: Row(
                        children: [
                          Text(
                            'Mumbai,Kandivali',
                            style: commonSmallFonts.copyWith(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
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
                          Text(
                            'Last Follow up:',
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
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Row(
                children: [
                  Text('Course'),
                  SizedBox(
                    width: 82,
                  ),
                  Text('Prenursery'),
                ],
              ),
            ),
            SizedBox(
              height: 28,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Row(
                children: [
                  Text('Category'),
                  SizedBox(
                    width: 68,
                  ),
                  Text('Social Media Campaign'),
                ],
              ),
            ),
            SizedBox(
              height: 28,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Row(
                children: [
                  Text('Source'),
                  SizedBox(
                    width: 74,
                  ),
                  Text('Montana Website'),
                ],
              ),
            ),
            SizedBox(
              height: 28,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Row(
                children: [
                  Text('Status'),
                  SizedBox(
                    width: 68,
                  ),
                  Text('Not interested/Need mismatch'),
                ],
              ),
            ),
            SizedBox(
              height: 28,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Row(
                children: const [
                  Text('Sub-status'),
                  SizedBox(
                    width: 68,
                  ),
                  Text('Not eligible'),
                ],
              ),
            ),
            SizedBox(
              height: 28,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Row(
                children: const [
                  Text(
                    'No further follow ups required',
                    style: TextStyle(color: Colors.red),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 38,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 12),
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
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Container(
                  width: 410,
                  height: 45,
                  decoration: const BoxDecoration(color: Colors.blue),
                  child: const Padding(
                    padding: EdgeInsets.only(
                      top: 8.0,
                      left: 10,
                    ),
                    child: Text(
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
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: TimelineTile(
                axis: TimelineAxis.vertical,
                indicatorStyle: const IndicatorStyle(
                  color: Colors.blue,
                  height: 25,
                  width: 25,
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
                      margin: const EdgeInsets.only(top: 10, bottom: 30),
                      height: 110,
                      width: 280,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          SizedBox(
                            height: 49,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 8.0, top: 8.0),
                            child: Text(
                              '17 Aug 2021 01:27 pm',
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: FittedBox(
                              child: Text(
                                'SMS/WHATS APP/E-Mail Message Sent',
                                style: TextStyle(fontSize: 16),
                              ),
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
              padding: const EdgeInsets.only(left: 18.0),
              child: TimelineTile(
                axis: TimelineAxis.vertical,
                indicatorStyle: const IndicatorStyle(
                  color: Colors.blue,
                  height: 25,
                  width: 25,
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
                      margin: const EdgeInsets.only(top: 10, bottom: 30),
                      height: 110,
                      width: 280,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          SizedBox(
                            height: 49,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 8.0, top: 8.0),
                            child: Text(
                              '12 Aug 2021 01:27 pm ',
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: FittedBox(
                              child: Text(
                                'SMS/WHATS APP/E-Mail Message Sent',
                                style: TextStyle(fontSize: 16),
                              ),
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
              padding: const EdgeInsets.only(left: 18.0),
              child: TimelineTile(
                axis: TimelineAxis.vertical,
                indicatorStyle: const IndicatorStyle(
                  color: Colors.white,
                  height: 25,
                  width: 25,
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
                      height: 140,
                      width: 280,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          SizedBox(
                            height: 49,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 8.0, top: 8.0),
                            child: FittedBox(
                              child: Text(
                                '11 Aug 2021 08:52 pm',
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 8),
                            child: Text(
                              'YTC',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 8),
                            child: FittedBox(
                              child: Text(
                                'Nidhi TRF TO ujwala parent didn\'t\n answer my call',
                              ),
                            ),
                          )
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
