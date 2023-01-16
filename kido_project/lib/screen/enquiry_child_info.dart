import 'package:flutter/material.dart';
import 'package:kido_project/widget/common_widget.dart';
import 'package:kido_project/widget/drop_down_common.dart';
import 'package:kido_project/widget/radio_gender.dart';

class EnqueryChildInfo extends StatefulWidget {
  const EnqueryChildInfo({super.key});

  @override
  State<EnqueryChildInfo> createState() => _EnqueryChildInfoState();
}

class _EnqueryChildInfoState extends State<EnqueryChildInfo> {
  final _firstNameController = TextEditingController();
  final _secondNameController = TextEditingController();
  final _enqueryGolbalKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(0, 53, 107, 100),
        title: Row(
          children: const [
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
        child: Form(
          key: _enqueryGolbalKey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 14,
                  top: 18,
                ),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: commonName('First Name', true),
                ),
              ),
              const SizedBox(
                height: 2,
              ),
              commonTextFormField(
                textColor: Colors.black,
                hintTextColor: Colors.black,
                hintText: 'First Name',
                myController: _firstNameController,
                backgroundColor: Colors.white,
                bottomPadding: 12,
                topPadding: 12,
                rightPadding: 12,
                leftPadding: 12,
              ),
              const SizedBox(
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
              commonTextFormField(
                textColor: Colors.black,
                hintTextColor: Colors.black,
                hintText: 'Second Name',
                myController: _secondNameController,
                backgroundColor: Colors.white,
                bottomPadding: 12,
                topPadding: 12,
                leftPadding: 12,
                rightPadding: 12,
              ),
              const SizedBox(
                height: 3,
              ),
              //commonSubmitButton(361, 57, 'Submit')
              const Padding(
                padding: EdgeInsets.only(left: 14.0, top: 0),
                child: StatefulRadioGenderWidget(),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 14,
                  top: 0,
                ),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: commonName('Category', true),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              const CommonWidgetDropDown()
            ],
          ),
        ),
      ),
    );
  }
}
