import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kido_project/MyScreens/screen.dart';
import 'package:kido_project/MyScreens/shared_pref.dart';
import 'package:kido_project/login/provider/login_provider.dart';

import 'package:kido_project/screen/Dashboard/navigation/my_nav.dart';
import 'package:kido_project/screen/dash_board.dart';
import 'package:kido_project/screen/leads_screen.dart';
import 'package:kido_project/utils/constants.dart';
//import 'package:kido_project/utils/my_shareprefrence.dart';
import 'package:kido_project/widget/common_widget.dart';
import 'package:kido_project/widget/login_text_form_field.dart';
import 'package:kido_project/widget/snack_msg.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _globalKey = GlobalKey<FormState>();
  final _userNameController = TextEditingController();
  final _userPasswordController = TextEditingController();
  bool passVisible = false;
  var kProvider;
  var myKProvider;
  //KidoLoginProvider? loginProvider;
  var mySpref = SharedPrefs();

  @override
  Widget build(BuildContext context) {
    kProvider = Provider.of<KidoLoginProvider>(context);

    // var databaseSharedPref =
    // Provider.of<DatabaseSharedPref>(context, listen: false);
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Login Screen'),
      // ),
      body: SingleChildScrollView(
        child: Form(
          key: _globalKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        "assets/images/splash_screen_first.png",
                      ),
                      fit: BoxFit.fill),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: -60,
                      right: 35,
                      child: Image.asset(
                        'assets/images/logo_kido.png',
                      ),
                    ),
                    Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 445,
                        ),
                        // SizedBox(
                        //   height: 102,
                        //   width: 400,
                        //   child: commonTextFormField(
                        //     myInputType: TextInputType.name,
                        //     topPadding: 10,
                        //     leftPadding: 28,
                        //     rightPadding: 28,
                        //     bottomPadding: 10,
                        //     textColor: Colors.black,
                        //     hintTextColor: Colors.black,
                        //     backgroundColor: Colors.white,
                        //     hintText: 'User Name',
                        //     myController: _userNameController,
                        //   ),
                        // ),
                        Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                            width: 340,
                            height: 79,
                            child: LoginTextFormField(
                              backGroundColor: whiteColor,
                              obscureText: false,
                              hintText: 'User Name',
                              hintTextColor: blackColor,
                              textEditingController: _userNameController,
                              eyeIcon: null,
                              maxLines: 1,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          height: 79,
                          width: 340,
                          child: Padding(
                            padding:
                                const EdgeInsets.only(left: 3.0, right: 3.0),
                            child: LoginTextFormField(
                              backGroundColor: whiteColor,
                              maxLines: 1,
                              eyeIcon: IconButton(
                                onPressed: () {
                                  Provider.of<KidoLoginProvider>(context,
                                          listen: false)
                                      .toggleVisibility();
                                },
                                icon: Icon(
                                  Provider.of<KidoLoginProvider>(context)
                                          .isVisible
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                ),
                              ),
                              obscureText:
                                  !Provider.of<KidoLoginProvider>(context)
                                      .isVisible,
                              textEditingController: _userPasswordController,
                              hintText: 'Password',
                              hintTextColor: Colors.black,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        // Consumer<KidoLoginProvider>(
                        //     builder: (context, kProvider, child) {
                        // WidgetsBinding.instance.addPostFrameCallback((_) {});

                        // commonSubmitButton(
                        //   globalKey: _globalKey,
                        //   height: 55,
                        //   width: 270,
                        //   textbtn: 'SIGN IN',
                        //   borderRadiusSize: 8,
                        //   buttonBackgroundColor:
                        //       const Color.fromARGB(255, 146, 53, 2),
                        //   myPress: () {
                        //     print('Pressed');
                        //     if (_globalKey.currentState!.validate()) {
                        //       //print('Pressed');
                        //       print('Pressed Second Time');
                        //       kProvider.loginData(
                        //           email: _userNameController.text.trim(),
                        //           password:
                        //               _userPasswordController.text.trim());
                        //       // showMessage(
                        //       //     message: _userNameController.text.trim(),
                        //       //     context: context);
                        //       if (kProvider.myLogin?.message != null) {
                        //         showMessage(
                        //             message: kProvider.myLogin?.message,
                        //             context: context);
                        //       } else {
                        //         print('Invalid Email/Password');
                        //         showMessage(
                        //             message: kProvider.myLogin?.message ??
                        //                 'No User Found',
                        //             context: context);
                        //       }
                        //       if (kProvider.myLogin?.data?.token != null) {
                        //         kProvider
                        //             .saveToken(kProvider.myLogin?.data?.token);
                        //         // showMessage(
                        //         //     message: kProvider.myLogin?.data?.token,
                        //         //     context: context);
                        //         print('Token Saved');
                        //         print('==Token==' + kProvider.token);
                        //         Navigator.push(
                        //           context,
                        //           MaterialPageRoute(
                        //             builder: (context) => MyNav(),
                        //           ),
                        //         );
                        //       }
                        //       // // showMessage(
                        //       // //     message: databaseSharedPref?.token,
                        //       // //     context: context);

                        //       // Consumer<KidoLoginProvider>(
                        //       //     builder: (context, kProvider, child) {
                        //       //   var loginData = kProvider.loginData(
                        //       //       email: _userNameController.text.trim(),
                        //       //       password:
                        //       //           _userPasswordController.text.trim());
                        //       //           if(kProvider.myLogin?.data?.token!=null){}
                        //       // });
                        //     }
                        //   },
                        // )

                        //Text(kProvider.myLogin?.data?.token ?? '')

                        //     ElevatedButton(
                        //         onPressed: () {
                        //           print('Pressed');
                        //           if (_globalKey.currentState!.validate()) {
                        //             //print('Pressed');
                        //             print('Pressed Second Time');
                        //             kProvider.loginData(
                        //                 email: _userNameController.text.trim(),
                        //                 password:
                        //                     _userPasswordController.text.trim());
                        //             // showMessage(
                        //             //     message: _userNameController.text.trim(),
                        //             //     context: context);
                        //             if (kProvider.myLogin?.message != null) {
                        //               showMessage(
                        //                   message: kProvider.myLogin?.message,
                        //                   context: context);
                        //             } else {
                        //               print('Invalid Email/Password');
                        //               showMessage(
                        //                   message: kProvider.myLogin?.message ??
                        //                       'No User Found',
                        //                   context: context);
                        //             }
                        //             if (kProvider.myLogin?.data?.token != null) {
                        //               kProvider.saveToken(
                        //                   kProvider.myLogin?.data?.token);
                        //               // showMessage(
                        //               //     message: kProvider.myLogin?.data?.token,
                        //               //     context: context);
                        //               print('Token Saved');
                        //               print('==Token==' + kProvider.token);
                        //               Navigator.push(
                        //                 context,
                        //                 MaterialPageRoute(
                        //                   builder: (context) => MyNav(),
                        //                 ),
                        //               );
                        //             }
                        //             // // showMessage(
                        //             // //     message: databaseSharedPref?.token,
                        //             // //     context: context);

                        //             // Consumer<KidoLoginProvider>(
                        //             //     builder: (context, kProvider, child) {
                        //             //   var loginData = kProvider.loginData(
                        //             //       email: _userNameController.text.trim(),
                        //             //       password:
                        //             //           _userPasswordController.text.trim());
                        //             //           if(kProvider.myLogin?.data?.token!=null){}
                        //             // });
                        //           }
                        //         },
                        //         child: Text('Login'))
                        //++++++++++++++++++++++++++++++++++++++++++++++++
                        //================================================
                        Consumer<KidoLoginProvider>(
                            builder: (context, value, child) {
                          return commonSubmitButton(
                              globalKey: _globalKey,
                              height: 55,
                              width: 270,
                              textbtn: 'SIGN IN',
                              borderRadiusSize: 8,
                              buttonBackgroundColor:
                                  const Color.fromARGB(255, 146, 53, 2),
                              myPress: () async {
                                print('Pressed');
                                //if (_globalKey.currentState!.validate()) {
                                //print('Pressed');
                                _globalKey.currentState?.save();
                                print('Pressed Second Time');
                                await kProvider.loginData(
                                    email: _userNameController.text.trim(),
                                    password:
                                        _userPasswordController.text.trim());
                                // showMessage(
                                //     message: _userNameController.text.trim(),
                                //     context: context);
                                if (kProvider.myLogin?.message != null) {
                                  showMessage(
                                      message: kProvider.myLogin?.message,
                                      context: context);
                                  showMessage(
                                      message: kProvider.myLogin?.data?.token,
                                      context: context);
                                } else {
                                  print('Invalid Email/Password');
                                  showMessage(
                                      message: kProvider.myLogin?.message ??
                                          'No User Found',
                                      context: context);
                                }
                                if (kProvider.myLogin?.data?.token != null) {
                                  mySpref.saveToken(
                                      kProvider.myLogin?.data?.token);
                                  // showMessage(
                                  //     message: kProvider.myLogin?.data?.token,
                                  //     context: context);
                                  print('Token Saved');
                                  print(
                                      '==Token== + ${kProvider.myLogin?.data?.token}');
                                  //mySpref.loginBool();
                                  // MySharedPreferences.instance
                                  //     .setStringValue("isLogin", "true");

                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => MyNav()),
                                  );
                                } else {
                                  showMessage(
                                      message: 'Please Enter Valid Credentials',
                                      context: context);
                                }
                                // ElevatedButton(
                                //     onPressed: () async {
                                //       print('Pressed');
                                //       if (_globalKey.currentState!.validate()) {
                                //         //print('Pressed');
                                //         print('Pressed Second Time');
                                //         await value.loginData(
                                //             email: _userNameController.text.trim(),
                                //             password:
                                //                 _userPasswordController.text.trim());
                                //         // showMessage(
                                //         //     message: _userNameController.text.trim(),
                                //         //     context: context);
                                //         if (value.myLogin?.message != null) {
                                //           showMessage(
                                //               message: value.myLogin?.message,
                                //               context: context);
                                //         } else {
                                //           print('Invalid Email/Password');
                                //           showMessage(
                                //               message: value.myLogin?.message ??
                                //                   'No User Found',
                                //               context: context);
                                //         }
                                //         if (value.myLogin?.data?.token != null) {
                                //           value.saveToken(value.myLogin?.data?.token);
                                //           // showMessage(
                                //           //     message: kProvider.myLogin?.data?.token,
                                //           //     context: context);
                                //           print('Token Saved');
                                //           print('==Token==' + value.token);
                                //           Navigator.push(
                                //             context,
                                //             MaterialPageRoute(
                                //               builder: (context) => MyNav(),
                                //             ),
                                //           );
                                //         }
                                //         // // showMessage(
                                //         // //     message: databaseSharedPref?.token,
                                //         // //     context: context);

                                //         // Consumer<KidoLoginProvider>(
                                //         //     builder: (context, kProvider, child) {
                                //         //   var loginData = kProvider.loginData(
                                //         //       email: _userNameController.text.trim(),
                                //         //       password:
                                //         //           _userPasswordController.text.trim());
                                //         //           if(kProvider.myLogin?.data?.token!=null){}
                                //         // });
                                //       }
                                //     },
                                //     child: Text('Login'));
                                //}
                              });
                        })
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  commonTextPasswordField(
      {required String hintText,
      required TextEditingController myController,
      required Color backgroundColor,
      required Color textColor,
      required Color hintTextColor}) {
    GoogleFonts.roboto();

    return Padding(
      padding: const EdgeInsets.only(top: 0, left: 30, right: 30, bottom: 0),
      child: TextFormField(
        validator: (value) {
          if (value!.isEmpty) {
            return 'please enter $hintText';
          } else {
            return null;
          }
        },
        style: TextStyle(
          color: textColor,
        ),
        obscureText: passVisible,
        controller: myController,
        decoration: InputDecoration(
          filled: true,
          fillColor: backgroundColor,
          hintText: hintText,
          hintStyle: TextStyle(
            color: hintTextColor,
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                color: Colors.black,
              )),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.blue),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: Colors.red,
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                color: Colors.red,
              )),
          suffixIcon: IconButton(
            onPressed: () {
              passVisible = !passVisible;
              setState(() {});
            },
            icon: passVisible
                ? const Icon(Icons.visibility_off)
                : const Icon(
                    Icons.visibility,
                  ),
          ),
        ),
      ),
    );
  }
}
