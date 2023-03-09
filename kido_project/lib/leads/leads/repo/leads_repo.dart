import 'dart:convert';

import 'package:kido_project/leads/leads/model/leads_model.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:kido_project/login/urls/api_urls.dart';

class LeadsRepository {
  LeadsModel leadsModalYesterday = LeadsModel();
  LeadsModel leadsModalToday = LeadsModel();
  LeadsModel leadsModalWeek = LeadsModel();
  var yesterdayLeadsResponse;
  var todayLeadsResponse;
  var weekLeadsRespponse;

  Future<LeadsModel> getYesterdaysData(String userToken) async {
    try {
      final response = await http.get(
        Uri.parse(baseUrlLeadsYesterday),
        headers: {'Authorization': userToken},
      );
      if (response.statusCode == 200 || response.statusCode == 400) {
        print('Success Part Status Code = ${response.statusCode}');
        yesterdayLeadsResponse = LeadsModel.fromJson(jsonDecode(response.body));
      } else {
        print('Else Part Status Code = ${response.statusCode}');
      }
    } catch (e) {
      print(e.toString());
    }
    return yesterdayLeadsResponse;
  }

  Future<LeadsModel> getTodaysData(String userToken) async {
    try {
      final response = await http.get(Uri.parse(baseUrlToday), headers: {
        'Authorization': userToken,
      });
      if (response.statusCode == 200 || response.statusCode == 400) {
        print('Success Part Status Code = ${response.statusCode}');
        todayLeadsResponse = LeadsModel.fromJson(jsonDecode(response.body));
      } else {
        print('Else Part Status Code = ${response.statusCode}');
      }
    } catch (e) {
      print('Error In Getting Todays Data = ${e.toString()}');
    }
    return todayLeadsResponse;
  }

  Future<LeadsModel> getWeeksData(String userToken) async {
    try {
      final response = await http.get(
        Uri.parse(baseUrlWeek),
        headers: {'Authorization': userToken},
      );
      if (response.statusCode == 200 || response.statusCode == 400) {
        print('Success part Status Code = ${response.statusCode}');
        weekLeadsRespponse = LeadsModel.fromJson(jsonDecode(response.body));
      } else {
        print('Else Part Status Code = ${response.statusCode}');
      }
    } catch (e) {
      print('Error In Getting Weeks Data = ${e.toString()}');
    }
    return weekLeadsRespponse;
  }
}
