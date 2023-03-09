import 'package:flutter/material.dart';
import 'package:kido_project/widget/common_widget.dart';

class StatefulRadioGenderWidget extends StatefulWidget {
  const StatefulRadioGenderWidget({super.key});

  @override
  State<StatefulRadioGenderWidget> createState() =>
      _StatefulRadioGenderWidgetState();
}

enum Gender { male, female }

class _StatefulRadioGenderWidgetState extends State<StatefulRadioGenderWidget> {
  Gender? _character = Gender.male;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        commonName('Gender', true),
        SizedBox(
          width: 127,
          child: RadioListTile<Gender>(
            title: const Text('male'),
            value: Gender.male,
            groupValue: _character,
            onChanged: (Gender? value) {
              setState(() {
                _character = value;
              });
              ScaffoldMessenger.of(context)
                  .showSnackBar(const SnackBar(content: Text('male Selected')));
            },
          ),
        ),
        SizedBox(
          width: 142,
          child: RadioListTile<Gender>(
            title: const Text('female'),
            value: Gender.female,
            groupValue: _character,
            onChanged: (Gender? value) {
              setState(() {
                _character = value;
              });
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('female Selected')));
            },
          ),
        ),
      ],
    );
  }
}
