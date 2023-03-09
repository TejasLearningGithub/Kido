import 'package:flutter/material.dart';
import 'package:kido_project/utils/constants.dart';

void showMessage({
  String? message,
  BuildContext? context,
}) {
  ScaffoldMessenger.of(context!).showSnackBar(SnackBar(
      content: Text(
        message!,
        style: const TextStyle(color: whiteColor),
      ),
      backgroundColor:blueColor));
}
