import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:kido_project/MyScreens/shared_pref.dart';
import 'package:kido_project/login/model/user_config_model.dart';
import 'package:kido_project/login/provider/login_provider.dart';

import 'package:kido_project/screen/add_lead.dart';
import 'package:kido_project/screen/enquiries.dart';
import 'package:kido_project/screen/follow_up_main.dart';
import 'package:kido_project/screen/leads_screen.dart';
import 'package:kido_project/screen/login_screen.dart';
import 'package:kido_project/widget/common_widget.dart';
import 'package:kido_project/widget/dashboard_tile.dart';
import 'package:kido_project/widget/snack_msg.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  bool isValid = true;
  var myToken;
  late SharedPreferences myPreferences;
  SharedPrefs myPref = SharedPrefs();
  var tokenPreferences;
  //var myToken;
  //final int _selectedIndex = 0;
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
    //token = kLogoutProvider.token;
    return Scaffold(
      //backgroundColor: Color.fromARGB(255, 221, 221, 221),
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Dashboard'),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications,
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            DashboardTile(
              imgUrl: 'assets/images/recrument.png',
              textString: 'LEADS',
              myPress: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LeadsScreen(token: tokenPreferences),
                  ),
                );
              },
            ),
            DashboardTile(
              myPress: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Enquiries(),
                  ),
                );
              },
              imgUrl: 'assets/images/enquiry.png',
              textString: 'ENQUERY',
            ),
            DashboardTile(
              myPress: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const FollowUpMain(),
                  ),
                );
              },
              imgUrl: 'assets/images/followup.png',
              textString: 'FOLLOW UPS',
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Text(
                    'Notifications',
                    style: commonMediumFonts.copyWith(
                      color: const Color(0xFF00356A),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Text(
                      'See All',
                      style: commonMediumFonts.copyWith(
                        color: const Color.fromARGB(100, 189, 83, 25),
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_forward_ios,
                        size: 30,
                        color: Color.fromARGB(100, 189, 83, 25),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            dashBoardNotificationList(context),
          ],
        ),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            // Consumer<KidoLoginProvider>(builder: (context, value, child) {
            //   return Column(
            //     children: [
            //       //Text(token ?? ''),
            //       ElevatedButton(
            //           onPressed: () {
            //             print('token = ${value.myLogin?.data?.token}');
            //             token = value.getToken();
            //             if (token != null) {
            //               value.logOutData(token: token!);

            //               print('All Data Erased');
            //               showMessage(
            //                   message: value.myLogout?.message ?? 'blank');
            //             }
            //           },
            //           child: const Text('Logout')),
            //     ],
            //   );
            // }),
            ElevatedButton(
              onPressed: () async {
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
              },
              child: Text('Logout'),
            ),
            //====================================================

            // ElevatedButton(
            //     onPressed: () async {
            //       await kLogoutProvider.myUserSelectConfig(savedToken);
            //       //if(kLogoutProvider.myBoolUserConfig.){}
            //       showMessage(
            //           message: kLogoutProvider.myBoolUserConfig?.success
            //                   .toString() ??
            //               'blank',
            //           context: context);
            //     },
            //     child: Text('Bool User Select'))
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => LeadsScreen(
                                token: tokenPreferences,
                              )));
                },
                child: Text('Leads List'))
          ],
        ),
      ),
    );
  }

  // methodPref() async {
  //   myPreferences = await SharedPreferences.getInstance();
  //   myPreferences.remove('token');
  //   return null;
  // }
}
