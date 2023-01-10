import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kido_project/widget/common_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var _globalKey = GlobalKey<FormState>();
  var _userNameController = TextEditingController();
  var _userPasswordController = TextEditingController();
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
                height: 50,
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Image.asset(
                  'assets/images/logo_kido.png',
                  width: 180,
                  height: 180,
                ),
              ),
              commonTextFormField(
                textColor: Colors.blue,
                hintTextColor: Colors.blue,
                backgroundColor: Colors.white,
                hintText: 'User Name',
                myController: _userNameController,
              ),
              commonTextPasswordField(
                textColor: Colors.blue,
                backgroundColor: Colors.white,
                hintText: 'Password',
                myController: _userPasswordController,
              ),
              SizedBox(
                height: 90,
              ),
              commonSubmitButton(
                  globalKey: _globalKey,
                  height: 60,
                  width: 250,
                  textbtn: 'Sign In',
                  borderRadiusSize: 8,
                  buttonBackgroundColor: Color.fromARGB(100, 189, 83, 25))
            ],
          ),
        ),
      ),
      backgroundColor: Color.fromARGB(100, 0, 53, 107),
    );
  }

  commonTextPasswordField({
    required String hintText,
    required TextEditingController myController,
    required Color backgroundColor,
    required Color textColor,
  }) {
    GoogleFonts.roboto();

    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextFormField(
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
            color: Colors.blue,
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: Colors.black,
              )),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.blue),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: Colors.red,
            ),
          ),
          suffixIcon: IconButton(
            onPressed: () {
              passVisible = !passVisible;
              setState(() {});
            },
            icon: passVisible
                ? Icon(Icons.visibility_off)
                : Icon(
                    Icons.visibility,
                  ),
          ),
        ),
      ),
    );
  }
}
