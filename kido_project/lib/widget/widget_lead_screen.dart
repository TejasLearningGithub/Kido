import 'package:flutter/material.dart';

enum leadScreeStatus { Lost, Warm, YTC, ENROLLED }

var myColorOfContainer;
var myFontColor = Colors.blue;
Color myColorFunction([leadScreeStatus? enrolled]) {
  switch (enrolled) {
    case leadScreeStatus.ENROLLED:
      myColorOfContainer = Colors.green;
      break;
    case leadScreeStatus.Lost:
      myColorOfContainer = Colors.red;
      break;
    case leadScreeStatus.YTC:
      myColorOfContainer = Colors.blueGrey;
      break;
    case leadScreeStatus.Warm:
      myColorOfContainer = Colors.brown;
      break;
    default:
      myColorOfContainer = Colors.white;
  }
  return myColorOfContainer;
}

myFunc([leadScreeStatus? enrolled]) {
  if (leadScreeStatus.ENROLLED == enrolled) {
    return myFontColor = Colors.blue;
  } else if (leadScreeStatus.Lost == enrolled) {
    return myFontColor = Colors.red;
  } else if (leadScreeStatus.Warm == enrolled) {
    return myFontColor = Colors.brown;
  } else if (leadScreeStatus.YTC == enrolled) {
    return myFontColor = Colors.blueGrey;
  }
}

myLeadStatusPrintText(leadScreeStatus enrolled) {
  if (leadScreeStatus.ENROLLED == enrolled) {
    return 'Enrolled';
  } else if (leadScreeStatus.Lost == enrolled) {
    return 'Lost';
  } else if (leadScreeStatus.Warm == enrolled) {
    return 'Warm';
  } else if (leadScreeStatus.YTC == enrolled) {
    return 'YTC';
  }
}
