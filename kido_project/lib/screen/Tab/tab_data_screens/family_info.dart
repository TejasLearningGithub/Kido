import 'package:flutter/material.dart';
import 'package:kido_project/widget/common_widget.dart';

class FamilyInfo extends StatefulWidget {
  const FamilyInfo({super.key});

  @override
  State<FamilyInfo> createState() => _FamilyInfoState();
}

class _FamilyInfoState extends State<FamilyInfo> {
  var _fatherNameController = TextEditingController();
  var _fatherContactController = TextEditingController();
  var _fatherAltContactController = TextEditingController();
  var _fatherEmailContactController = TextEditingController();
  var _fathersEducation = TextEditingController();
  var _fathersProfession = TextEditingController();
  var _mothersNameController = TextEditingController();
  var _mothersContactController = TextEditingController();
  var _mothersAltContactController = TextEditingController();
  var _mothersEmailController = TextEditingController();
  var _mothersEduController = TextEditingController();
  var _mothersProfession = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Family Info'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 28),
              child: commonName('Father\'s Name ', true),
            ),
            commonTextFormField(
              hintText: 'Father\'s Name',
              hintTextColor: Colors.black,
              myController: _fatherNameController,
              backgroundColor: Colors.blueGrey,
              textColor: const Color.fromRGBO(0, 0, 0, 1),
              topPadding: 10,
              bottomPadding: 0,
              rightPadding: 18,
              leftPadding: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 28),
              child: commonName('Father\'s Contact Number ', true),
            ),
            commonTextFormField(
              hintText: 'Father\'s Contact Number',
              hintTextColor: Colors.black,
              myController: _fatherContactController,
              backgroundColor: Colors.blueGrey,
              textColor: const Color.fromRGBO(0, 0, 0, 1),
              topPadding: 10,
              bottomPadding: 0,
              rightPadding: 18,
              leftPadding: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 28),
              child: commonName('Father\'s Alternate Contact number ', true),
            ),
            commonTextFormField(
              hintText: 'Father\'s Alternate Contact number',
              hintTextColor: Colors.black,
              myController: _fatherAltContactController,
              backgroundColor: Colors.blueGrey,
              textColor: const Color.fromRGBO(0, 0, 0, 1),
              topPadding: 10,
              bottomPadding: 0,
              rightPadding: 18,
              leftPadding: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 28),
              child: commonName('Father\'s Email Id ', true),
            ),
            commonTextFormField(
              hintText: 'Father\'s Email Id',
              hintTextColor: Colors.black,
              myController: _fatherEmailContactController,
              backgroundColor: Colors.blueGrey,
              textColor: const Color.fromRGBO(0, 0, 0, 1),
              topPadding: 10,
              bottomPadding: 0,
              rightPadding: 18,
              leftPadding: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 28),
              child: commonName('Father\'s Education ', true),
            ),
            commonTextFormField(
              hintText: 'Father\'s Education',
              hintTextColor: Colors.black,
              myController: _fathersEducation,
              backgroundColor: Colors.blueGrey,
              textColor: const Color.fromRGBO(0, 0, 0, 1),
              topPadding: 10,
              bottomPadding: 0,
              rightPadding: 18,
              leftPadding: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 28),
              child: commonName('Father\'s Profession ', true),
            ),
            commonTextFormField(
              hintText: 'Father\'s Profession',
              hintTextColor: Colors.black,
              myController: _fathersProfession,
              backgroundColor: Colors.blueGrey,
              textColor: const Color.fromRGBO(0, 0, 0, 1),
              topPadding: 10,
              bottomPadding: 0,
              rightPadding: 18,
              leftPadding: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 28),
              child: commonName('Mother\'s Name ', true),
            ),
            commonTextFormField(
              hintText: 'Mother\'s Name',
              hintTextColor: Colors.black,
              myController: _mothersNameController,
              backgroundColor: Colors.blueGrey,
              textColor: const Color.fromRGBO(0, 0, 0, 1),
              topPadding: 10,
              bottomPadding: 0,
              rightPadding: 18,
              leftPadding: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 28),
              child: commonName('Mother\'s Contact Number ', true),
            ),
            commonTextFormField(
              hintText: 'Mother\'s Contact Number',
              hintTextColor: Colors.black,
              myController: _mothersContactController,
              backgroundColor: Colors.blueGrey,
              textColor: const Color.fromRGBO(0, 0, 0, 1),
              topPadding: 10,
              bottomPadding: 0,
              rightPadding: 18,
              leftPadding: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 28),
              child: commonName('Mother\'s Alternate Contact Number ', true),
            ),
            commonTextFormField(
              hintText: 'Mother\'s Alternate Contact Number',
              hintTextColor: Colors.black,
              myController: _mothersAltContactController,
              backgroundColor: Colors.blueGrey,
              textColor: const Color.fromRGBO(0, 0, 0, 1),
              topPadding: 10,
              bottomPadding: 0,
              rightPadding: 18,
              leftPadding: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 28),
              child: commonName('Mother\'s E-Mail Id ', true),
            ),
            commonTextFormField(
              hintText: 'Mother\'s E-Mail Id',
              hintTextColor: Colors.black,
              myController: _mothersEmailController,
              backgroundColor: Colors.blueGrey,
              textColor: const Color.fromRGBO(0, 0, 0, 1),
              topPadding: 10,
              bottomPadding: 0,
              rightPadding: 18,
              leftPadding: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 28),
              child: commonName('Mother\'s Education ', true),
            ),
            commonTextFormField(
              hintText: 'Mother\'s Education',
              hintTextColor: Colors.black,
              myController: _mothersEduController,
              backgroundColor: Colors.blueGrey,
              textColor: const Color.fromRGBO(0, 0, 0, 1),
              topPadding: 10,
              bottomPadding: 0,
              rightPadding: 18,
              leftPadding: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 28),
              child: commonName('Mother\'s Profession ', true),
            ),
            commonTextFormField(
              hintText: 'Mother\'s Profession',
              hintTextColor: Colors.black,
              myController: _mothersProfession,
              backgroundColor: Colors.blueGrey,
              textColor: const Color.fromRGBO(0, 0, 0, 1),
              topPadding: 10,
              bottomPadding: 0,
              rightPadding: 18,
              leftPadding: 20,
            ),
            const SizedBox(
              height: 85,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 19,
                ),
                previous_button(myOnPress: () {}),
                const SizedBox(
                  width: 45,
                ),
                save_continue(myOnPress: () {}),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
