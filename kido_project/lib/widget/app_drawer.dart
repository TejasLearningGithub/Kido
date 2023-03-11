import 'package:flutter/material.dart';
import 'package:kido_project/MyScreens/shared_pref.dart';
import 'package:kido_project/login/provider/login_provider.dart';
import 'package:kido_project/screen/enquiries.dart';
import 'package:kido_project/screen/leads_screen.dart';
import 'package:kido_project/screen/login_screen.dart';
import 'package:kido_project/theme/app_asset.dart';
import 'package:kido_project/theme/app_theme.dart';
import 'package:kido_project/widget/snack_msg.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../screen/follow_up_main.dart';

class AppDrawer extends StatefulWidget {
  AppDrawer({super.key});

  @override
  State<AppDrawer> createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  bool isValid = true;

  var myToken;

  late SharedPreferences myPreferences;

  SharedPrefs myPref = SharedPrefs();

  var tokenPreferences;

  //var myToken;
  var token;

  var mySavedToken =
      'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjYzYjQwNzczOWQ2ZWZkNmYxOWNmMDcxNiIsIm5hbWUiOiJzeXN0ZW0gYWRtaW4iLCJlbWFpbCI6InN5c2FkbWluQHN5c3RlbS5jb20iLCJpYXQiOjE2NzY4ODk2MTIsImV4cCI6MTY4NDY2NTYxMn0.m2WVcSkY2Sbcux5yjWa-X6t5-zOOFNdizzAyFIyr6LA';

  var tokenPresentSharedPref;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    myTokenPresent();
  }

  myTokenPresent() async {
    myPreferences = await SharedPreferences.getInstance();
    tokenPreferences = myPreferences.getString('token');
    return tokenPreferences;
  }

  @override
  Widget build(BuildContext context) {
    var kLogoutProvider =
        Provider.of<KidoLoginProvider>(context, listen: false);
    myToken = kLogoutProvider.myLogin?.data?.token;
    return Drawer(
      child: Column(
        children: [
          Container(
            color: Colors.blue,
            height: MediaQuery.of(context).size.height / 4,
            width: double.maxFinite,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  AppLogos.kidoLogo,
                  height: 140,
                ),
                Text(
                  "Sonali Shah",
                  style: montserratBold.copyWith(color: Colors.white),
                ),
                Text(
                  "sonali30h@gmail.com 112233",
                  style: montserratNormal.copyWith(color: Colors.white),
                ),
              ],
            ),
          ),
          // Leads
          ListTile(
            onTap: () {
              //Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LeadsScreen(token: tokenPreferences),
                ),
              );
            },
            leading: Image.asset(
              AppIcons.leadsIcon,
              color: Colors.black,
              height: 40,
            ),
            title: Text(
              "Leads",
              style: montserratNormal.copyWith(
                color: Colors.black,
                fontSize: 18,
              ),
            ),
          ),
          // Enquiries
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Enquiries(),
                ),
              );
            },
            leading: Image.asset(
              AppIcons.enquiryIcon,
              color: Colors.black,
              height: 35,
            ),
            title: Text(
              "Enquiries",
              style: montserratNormal.copyWith(
                color: Colors.black,
                fontSize: 18,
              ),
            ),
          ),
          // Follow Up
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const FollowUpMain(),
                ),
              );
            },
            leading: Image.asset(
              AppIcons.followUpIcon,
              color: Colors.black,
              height: 40,
            ),
            title: Text(
              "Follow Ups",
              style: montserratNormal.copyWith(
                color: Colors.black,
                fontSize: 18,
              ),
            ),
          ),
          // Share app
          ListTile(
            onTap: () {
              Navigator.pop(context);
            },
            leading: const Icon(
              Icons.share_outlined,
              size: 30,
              color: Colors.black,
            ),
            title: Text(
              "Share App",
              style: montserratNormal.copyWith(
                color: Colors.black,
                fontSize: 18,
              ),
            ),
          ),
          // Logout
          ListTile(
            onTap: () async {
              token = await myPref.getToken();
              var savedToken = await kLogoutProvider.mylogout(token);
              //print(myToken);
              print('Message = ${kLogoutProvider.myLogout?.message}');
              print('Code = ${kLogoutProvider.myLogout?.code}');
              showMessage(
                message: kLogoutProvider.myLogout?.message,
                context: context,
              );
              // if (token.isEmpty || token == null) {
              //   setState(() async {
              //     //token = null;
              //     var token = await myPref.saveToken('');
              //   });
              // }
              //MySharedPreferences.instance.removeAll();
              //methodPref();
              //myPref.logoutBool();
              //myPref.saveToken('');
              //===================================================
              //======Logout
              Navigator.of(context, rootNavigator: true).pushReplacement(
                  MaterialPageRoute(builder: (context) => LoginScreen()));
              //Navigator.pop(context);
            },
            leading: const Icon(
              Icons.logout_outlined,
              size: 30,
              color: Colors.black,
            ),
            title: Text(
              "Logout",
              style: montserratNormal.copyWith(
                color: Colors.black,
                fontSize: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
