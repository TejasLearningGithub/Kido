import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
      appBar: AppBar(
        title: const Text('Login Screen'),
      ),
      body: Form(
        key: _globalKey,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(
                height: 30,
              ),
              Align(
                alignment: Alignment.topCenter,
                child: myImageWidget(
                  imgUrl: 'assets/images/logo_kido.png',
                  height: 260,
                  width: 260,
                ),
              ),
              commonTextFormField(
                topPadding: 30,
                leftPadding: 30,
                rightPadding: 30,
                bottomPadding: 30,
                textColor: Colors.black,
                hintTextColor: Colors.black,
                backgroundColor: Colors.white,
                hintText: 'User Name',
                myController: _userNameController,
              ),
              commonTextPasswordField(
                hintTextColor: Colors.black,
                textColor: Colors.black,
                backgroundColor: Colors.white,
                hintText: 'Password',
                myController: _userPasswordController,
              ),
              const SizedBox(
                height: 90,
              ),
              commonSubmitButton(
                  globalKey: _globalKey,
                  height: 60,
                  width: 250,
                  textbtn: 'Sign In',
                  borderRadiusSize: 8,
                  buttonBackgroundColor: const Color.fromARGB(100, 189, 83, 25))
            ],
          ),
        ),
      ),
      backgroundColor: const Color.fromARGB(100, 0, 53, 107),
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
