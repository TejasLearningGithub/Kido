import 'dart:convert';

import 'package:kido_project/login/model/login_model.dart';
import 'package:http/http.dart' as http;
import 'package:kido_project/login/model/logout_model.dart';
import 'package:kido_project/login/model/user_config_model.dart';
import 'package:kido_project/login/urls/api_urls.dart';

class Repository {
  String _token = '';
  final String _userId = '';

  String get token => _token;
  String get userId => _userId;

  var loginModel = LoginModel();
  var res;
  var resLogout;
  var resBoolUser;
  var response;
  Future<LoginModel> login(String email, String password) async {
    try {
      response = await http.post(Uri.parse(baseUrlLogin),
          body: {'email': email, 'password': password});
      if (response.statusCode == 200 || response.statusCode == 400) {
        res = LoginModel.fromJson(jsonDecode(response.body));
        return res;
      }
    } catch (e) {
      print('===error In Login:===' + e.toString());
    }

    throw Exception('Unexpected Error Occured');
  }

  logout(String token) async {
    try {
      var logOutResponse = await http.post(
        Uri.parse(baseUrlLogout),
        headers: {'Authorization': token},
      );

      if (logOutResponse.statusCode == 200 ||
          logOutResponse.statusCode == 400) {
        print("success____________________");
        print("${logOutResponse.statusCode}");
        resLogout = LogoutModel.fromJson(jsonDecode(logOutResponse.body));

        print('+++++++++++++++++++++++++++++++++++++++$resLogout');
      } else {
        print("else part = ${logOutResponse.statusCode}");

        print("not________________________");
      }
    } catch (e) {
      print('===Error In Logout===+${e.toString()}');
    }
    return resLogout;
  }

  void setToken(String? token) {
    _token = token!;
  }

  Future<UserConfiguration> boolUserLogin(String userToken) async {
    try {
      var responseUser = await http.get(Uri.parse(boolUserUrl), headers: {
        'Authorization': userToken,
      });

      if (responseUser.statusCode == 200 || responseUser.statusCode == 400) {
        print('Status Code=${responseUser.statusCode}');

        resBoolUser = UserConfiguration.fromJson(jsonDecode(responseUser.body));
      } else {
        print('Else Status Code = ${responseUser.statusCode}');
      }
    } catch (e) {
      print(e.toString());
    }

    return resBoolUser;
  }
}
