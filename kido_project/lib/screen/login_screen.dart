import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:kido_project/screen/Dashboard/navigation/my_nav.dart';
import 'package:kido_project/widget/common_widget.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _globalKey = GlobalKey<FormState>();
  final _userNameController = TextEditingController();
  final _userPasswordController = TextEditingController();
  bool passVisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Login Screen'),
      // ),
      body: SingleChildScrollView(
        child: Form(
          key: _globalKey,
          child: Column(
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
                        SizedBox(
                          height: 102,
                          width: 400,
                          child: commonTextFormField(
                            myInputType: TextInputType.name,
                            topPadding: 10,
                            leftPadding: 28,
                            rightPadding: 28,
                            bottomPadding: 10,
                            textColor: Colors.black,
                            hintTextColor: Colors.black,
                            backgroundColor: Colors.white,
                            hintText: 'User Name',
                            myController: _userNameController,
                          ),
                        ),
                        
                        SizedBox(
                          height: 122,
                          width: 499,
                          child: Padding(
                            padding:
                                const EdgeInsets.only(left: 3.0, right: 3.0),
                            child: commonTextPasswordField(
                                backgroundColor: Colors.white,
                                hintText: 'Password',
                                hintTextColor: Colors.black,
                                myController: _userPasswordController,
                                textColor: Colors.black),
                          ),
                        ),
                        
                        commonSubmitButton(
                          globalKey: _globalKey,
                          height: 55,
                          width: 270,
                          textbtn: 'SIGN IN',
                          borderRadiusSize: 8,
                          buttonBackgroundColor:
                              const Color.fromARGB(255, 146, 53, 2),
                          myPress: () {
                            if (_globalKey.currentState!.validate()) {
                              //_globalKey.currentState!.save();
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const MyNav()),
                              );
                            }
                          },
                        ),
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
