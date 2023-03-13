import 'dart:convert';
import 'dart:developer';

import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
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
  final _numberOfPostsPerRequest = 10;
  final PagingController<int, LeadsModel> pagingController =
      PagingController(firstPageKey: 0);

  Future<LeadsModel> getYesterdaysData(String userToken) async {
    try {
      final response = await http.get(
        Uri.parse(baseUrlLeadsYesterday),
        headers: {'Authorization': userToken},
      );
      if (response.statusCode == 200 || response.statusCode == 400) {
        log('Success Part Status Code = ${response.statusCode}');
        yesterdayLeadsResponse = LeadsModel.fromJson(jsonDecode(response.body));
      } else {
        log('Else Part Status Code = ${response.statusCode}');
      }
    } catch (e) {
      log(e.toString());
    }
    return yesterdayLeadsResponse;
  }

  Future<LeadsModel> getTodaysData(String userToken, int pageKey) async {
    try {
      final response = await http.get(
          Uri.parse(baseUrlToday +
              '?_page=${pageKey + 1}&_limit=$_numberOfPostsPerRequest'),
          headers: {
            'Authorization': userToken,
          });
      List responseList = json.decode(response.body);
      List<LeadsModel> leadsList = responseList
          .map(
            (data) => LeadsModel(
              code: data['code'],
              data: data['data'],
              message: data['message'],
              success: data['success'],
            ),
          )
          .toList();

      if (response.statusCode == 200 || response.statusCode == 400) {
        log('Success Part Status Code = ${response.statusCode}');
        todayLeadsResponse = LeadsModel.fromJson(jsonDecode(response.body));
        // if (isLastPage) {
        pagingController.appendLastPage(todayLeadsResponse);
        // }
      } else {
        log('Else Part Status Code = ${response.statusCode}');
      }
    } catch (e) {
      log('Error In Getting Todays Data = ${e.toString()}');
      pagingController.error = e;
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
        log('Success part Status Code = ${response.statusCode}');
        weekLeadsRespponse = LeadsModel.fromJson(jsonDecode(response.body));
      } else {
        log('Else Part Status Code = ${response.statusCode}');
      }
    } catch (e) {
      log('Error In Getting Weeks Data = ${e.toString()}');
    }
    return weekLeadsRespponse;
  }
}
