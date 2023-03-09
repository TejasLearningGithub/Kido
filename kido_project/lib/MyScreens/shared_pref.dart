import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefs {
  static SharedPreferences? _preferences;
  // void initSharedPreferences() async {
  //   SharedPreferences spref = await SharedPreferences.getInstance();
  // }
  //var myToken;

  static Future init() async {
    _preferences = await SharedPreferences.getInstance();
  }

  saveToken(String token) async {
    SharedPreferences spref = await SharedPreferences.getInstance();
    await spref.setString('token', token);
    print('Token Saved Success');
  }

  getToken() async {
    //initSharedPreferences();
    SharedPreferences spref = await SharedPreferences.getInstance();
    var myToken = await spref.getString('token');
    print('Token Get Success');
    return myToken!;
  }

  clearToken() async {
    SharedPreferences spref = await SharedPreferences.getInstance();
    spref.clear();
  }

  loginBool() async {
    SharedPreferences spref = await SharedPreferences.getInstance();
    spref.setBool('isLogin', true);
  }

  logoutBool() async {
    SharedPreferences spref = await SharedPreferences.getInstance();
    spref.setBool('isLogin', false);
  }
}
