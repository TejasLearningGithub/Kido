import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:kido_project/widget/common_widget.dart';

class EnqueryChildInfo extends StatefulWidget {
  const EnqueryChildInfo({super.key});

  @override
  State<EnqueryChildInfo> createState() => _EnqueryChildInfoState();
}

class _EnqueryChildInfoState extends State<EnqueryChildInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF00356A),
        title: Row(
          children: [
            Icon(
              Icons.arrow_back,
              size: 30,
            ),
            SizedBox(
              width: 34,
            ),
            Text('Enquiry Form')
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 14,
                top: 18,
              ),
              child: Align(
                alignment: Alignment.topLeft,
                child: commonName('First Name', false),
              ),
            ),
            SizedBox(
              height: 2,
            ),
            commonTextFormField('First Name'),
            SizedBox(
              height: 0,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 14,
                top: 8,
              ),
              child: Align(
                alignment: Alignment.topLeft,
                child: commonName('Second Name', true),
              ),
            ),
            commonTextFormField('Second Name'),
            SizedBox(
              height: 3,
            ),
            //commonSubmitButton(361, 57, 'Submit')
          ],
        ),
      ),
    );
  }
}
