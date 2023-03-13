import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:kido_project/leads/leads/model/leads_model.dart';
import 'package:kido_project/leads/leads/model/leads_no_data.dart';
import 'package:kido_project/leads/leads/repo/leads_repo.dart';
import 'package:kido_project/login/repository/repo_login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LeadsProvider with ChangeNotifier {
  int pageKey = 0;
  LeadsModel? yesterdaysLeads;
  LeadsModel? todaysLeads;
  LeadsModel? weekLeads;

  var repo = LeadsRepository();
  LeadsModel? get myLeads => yesterdaysLeads;
  LeadsModel? get myTodaysLeads => todaysLeads;
  LeadsModel? get myWeekLeads => weekLeads;

  Future<LeadsModel> getYesterdaysData(String token) async {
    yesterdaysLeads = await repo.getYesterdaysData(token);
    notifyListeners();
    log('Yesterdays Provider Called');
    return yesterdaysLeads!;
  }

  Future<LeadsModel> getTodaysData(String token) async {
    todaysLeads = await repo.getTodaysData(token,pageKey);
    notifyListeners();
    log('Todays Provider Called');
    return todaysLeads!;
  }

  Future<LeadsModel> getWeeksData(String token) async {
    weekLeads = await repo.getWeeksData(token);
    notifyListeners();
    log('Week Provider Called');
    return weekLeads!;
  }
}
