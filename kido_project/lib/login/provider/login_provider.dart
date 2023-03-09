import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:kido_project/login/model/login_model.dart';
import 'package:kido_project/login/model/logout_model.dart';
import 'package:kido_project/login/model/user_config_model.dart';
import 'package:kido_project/login/repository/repo_login.dart';
import 'package:kido_project/screen/login_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class KidoLoginProvider with ChangeNotifier {
  bool _isLoading = false;
  String _resMessage = '';
  LoginModel? loginModel;
  LogoutModel? logoutModel;
  //Getter
  var repository = Repository();
  bool get isLoading => _isLoading;
  String get resMessage => _resMessage;

  LoginModel? myLogin;
  LoginModel? get myPersonCreateGetter => myLogin;

  LogoutModel? myLogout;
  LogoutModel? get myLoginGetter => myLogout;

  UserConfiguration? myBoolUserConfig;
  UserConfiguration? get myUserConfig => myBoolUserConfig;

  final Future<SharedPreferences> _pref = SharedPreferences.getInstance();
  String _token = '';
  String _userId = '';

  String get token => _token;
  String get userId => _userId;

  bool _isVisible = false;

  bool get isVisible => _isVisible;

  void toggleVisibility() {
    _isVisible = !_isVisible;
    notifyListeners();
  }




  Future<LoginModel> loginData({
    required String email,
    required String password,
  }) async {
    print('TAPPED');

    myLogin = await repository.login(email, password);

    notifyListeners();

    return myLogin!;
  }

  void saveToken(String? token) async {
    SharedPreferences value = await SharedPreferences.getInstance();
    notifyListeners();
    print('Save Token Method Called');
    await value.setString('token', token.toString());
    notifyListeners();
  }

  void initSharedPreferences() async {
    SharedPreferences spref = await SharedPreferences.getInstance();
  }

  getToken(String token, SharedPreferences spref) async {
    initSharedPreferences();
    var myToken = await spref.getString('token');
    return myToken;
  }

  // void setToken(String? token) {
  //   _token = token!;
  //   notifyListeners();
  // }

  bool get isAuthenticated => _token != null;

  mylogout(String? myToken) async {
    myLogout = await repository.logout(myToken!);
    notifyListeners();
    print('My Logout Provider');
  }

  Future<UserConfiguration> myUserSelectConfig(String token) async {
    myBoolUserConfig = await repository.boolUserLogin(token);
    notifyListeners();
    print('My User Config');
    return myBoolUserConfig!;
  }
}
