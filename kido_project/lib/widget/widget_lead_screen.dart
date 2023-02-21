import 'package:flutter/material.dart';

enum LeadScreeStatus { lost, warm, ytc, enrolled }

var myColorOfContainer = Colors.white;
var myFontColor = Colors.blue;
Color myColorFunction([LeadScreeStatus? enrolled]) {
  switch (enrolled) {
    case LeadScreeStatus.enrolled:
      myColorOfContainer = Colors.green;
      break;
    case LeadScreeStatus.lost:
      myColorOfContainer = Colors.red;
      break;
    case LeadScreeStatus.ytc:
      myColorOfContainer = Colors.blueGrey;
      break;
    case LeadScreeStatus.warm:
      myColorOfContainer = Colors.brown;
      break;
    default:
      myColorOfContainer = Colors.white;
  }
  return myColorOfContainer;
}

myFunc([LeadScreeStatus? enrolled]) {
  if (LeadScreeStatus.enrolled == enrolled) {
    return myFontColor = Colors.blue;
  } else if (LeadScreeStatus.lost == enrolled) {
    return myFontColor = Colors.red;
  } else if (LeadScreeStatus.warm == enrolled) {
    return myFontColor = Colors.brown;
  } else if (LeadScreeStatus.ytc == enrolled) {
    return myFontColor = Colors.blueGrey;
  }
}

myLeadStatusPrintText(LeadScreeStatus enrolled) {
  if (LeadScreeStatus.enrolled == enrolled) {
    return 'enrolled';
  } else if (LeadScreeStatus.lost == enrolled) {
    return 'lost';
  } else if (LeadScreeStatus.warm == enrolled) {
    return 'warm';
  } else if (LeadScreeStatus.ytc == enrolled) {
    return 'ytc';
  }
}
