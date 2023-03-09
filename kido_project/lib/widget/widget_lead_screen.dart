import 'package:flutter/material.dart';
import 'package:kido_project/utils/constants.dart';

var myColorOfContainer = Colors.white;
Color myFontColor = Colors.blue;
Color myColorFunction([LeadScreeStatus? enrolled]) {
  switch (enrolled) {
    case LeadScreeStatus.enrolled:
      myColorOfContainer = greenColor;
      break;
    case LeadScreeStatus.lost:
      myColorOfContainer = redColor;
      break;
    case LeadScreeStatus.ytc:
      myColorOfContainer = blueGreyColor;
      break;
    case LeadScreeStatus.warm:
      myColorOfContainer = brownColor;
      break;
    default:
      myColorOfContainer = whiteColor;
  }
  return myColorOfContainer;
}

myFunc([LeadScreeStatus? enrolled]) {
  if (LeadScreeStatus.enrolled == enrolled) {
    return myFontColor = blueColor;
  } else if (LeadScreeStatus.lost == enrolled) {
    return myFontColor = redColor;
  } else if (LeadScreeStatus.warm == enrolled) {
    return myFontColor = brownColor;
  } else if (LeadScreeStatus.ytc == enrolled) {
    return myFontColor = blueGreyColor;
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
