import 'package:flutter/material.dart';
import 'package:kido_project/MyScreens/screen.dart';
import 'package:kido_project/MyScreens/shared_pref.dart';
import 'package:kido_project/carousel_slider/pages/carousel_slider_main/slider_main.dart';
import 'package:kido_project/leads/provider/leads_provider.dart';
import 'package:kido_project/login/provider/login_provider.dart';
import 'package:kido_project/screen/Dashboard/navigation/my_nav.dart';
import 'package:kido_project/screen/add_lead.dart';
import 'package:kido_project/screen/dash_board.dart';
import 'package:kido_project/screen/enquiries.dart';
import 'package:kido_project/screen/follow_up_main.dart';
import 'package:kido_project/screen/lead_form.dart';
import 'package:kido_project/screen/leads_screen.dart';
import 'package:kido_project/screen/login_screen.dart';
//import 'package:kido_project/utils/my_shareprefrence.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SharedPrefs.init();
  runApp(const MyApp());
}

// class MyApp extends StatelessWidget {
//   SharedPrefs myPreferences = SharedPrefs();
//   var getMyToken;
//   myToken() async {
//     getMyToken = await myPreferences.getToken();
//     return getMyToken;
//   }

//   // const MyApp({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return MultiProvider(
//       providers: [
//         ChangeNotifierProvider<KidoLoginProvider>(
//             create: (_) => KidoLoginProvider()),
//         ChangeNotifierProvider<LeadsProvider>(
//           create: (_) => LeadsProvider(),
//         ),
//       ],
//       child: MaterialApp(
//         home: getMyToken.toString().isEmpty ? const LoginScreen() : const MyNav()),
//     );
//   }
// }

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String? isLogin;
  late SharedPreferences? myPrefs;
  var mySavedToken;
  var myBoolValue;
  @override
  void initState() {
    initPrefs();
    //getBool();
    super.initState();
  }

  initPrefs() async {
    myPrefs = await SharedPreferences.getInstance();
    mySavedToken = myPrefs?.getString('token');
    return mySavedToken;
  }

  // getBool() async {
  //   myPrefs = await SharedPreferences.getInstance();
  //   myBoolValue = myPrefs?.getBool('isLogin');
  //   return myBoolValue;
  // }
  // isLogin =
  //     MySharedPreferences.instance.getStringValue("isLogin", "", myPrefs!);

  // print("isLogin______________-$isLogin");

  // if(isLogin == "true"){
  //   Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>const MyNav()), (route) => false);
  // }else{
  //   Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>const LoginScreen()), (route) => false);
  // }
  // }

  @override
  Widget build(BuildContext context) {
    //print("isLogin1_______________$isLogin");
    return MultiProvider(
        providers: [
          ChangeNotifierProvider<KidoLoginProvider>(
              create: (_) => KidoLoginProvider()),
          ChangeNotifierProvider<LeadsProvider>(
            create: (_) => LeadsProvider(),
          ),
        ],
        child: const MaterialApp(home: DashBoard()

            //getBool() == false ? LoginScreen() : MyNav(),
            )

        //isLogin == "true" ? const MyNav() : const LoginScreen()),
        );
  }
}
