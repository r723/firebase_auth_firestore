import 'package:flutter/material.dart';
import 'package:flutter_application_1/service/utils.dart';
import 'package:flutter_application_1/theme/palette.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import '../provider/auth_provider.dart';
import '../theme/routes.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Login")),
      body: const loginUi(),
    );
  }
}

class loginUi extends StatefulWidget {
  const loginUi();

  @override
  State<loginUi> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<loginUi> {
  AuthProvider? _provider;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    _provider = Provider.of<AuthProvider>(context);
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(height: 15.h),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: TextFormField(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              controller: emailController,
              validator: (input) =>
                  input!.isValidEmail() ? null : "Enter valid email",
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                  hintText: 'Enter valid email id as abc@gmail.com'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 15.0, right: 15.0, top: 15, bottom: 0),
            child: TextFormField(
              controller: passwordController,
              obscureText: true,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                  hintText: 'Enter secure password'),
            ),
          ),
          SizedBox(height: 15.h),
          Container(
            height: 50,
            width: 250,
            decoration: BoxDecoration(
                color: Palette.appTheme.primaryColor,
                borderRadius: BorderRadius.circular(20)),
            child: TextButton(
              onPressed: () async {
                var map = {
                  "email_address": emailController.text,
                  "password": passwordController.text,
                };
                var res = await _provider!.loginMeAuth(map);
                if (res.isRight()) {
                  navigator.pushNamedAndRemoveUntil(Routes.HOME);
                }
              },
              child: const Text(
                'Login',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10),
            height: 50,
            width: 250,
            decoration: BoxDecoration(
                border: Border.all(color: Palette.appTheme.primaryColor),
                borderRadius: BorderRadius.circular(20)),
            child: TextButton(
              onPressed: () async {
                var res = await _provider!.signInWithGoogle();
                print("res ==>$res");
                if (res.isRight()) {
                  await navigator.pushNamedAndRemoveUntil(Routes.HOME);
                }
              },
              child: Text(
                'Google sign in',
                style: TextStyle(
                    color: Palette.appTheme.primaryColor, fontSize: 25),
              ),
            ),
          ),
          SizedBox(height: 2.h),
          GestureDetector(
            onTap: () {
              navigator.navigateTo(Routes.REGISTER);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("New User?"),
                SizedBox(width: 2.w),
                Text(
                  "Click here",
                  style: TextStyle(color: Palette.appTheme.primaryColor),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

extension EmailValidator on String {
  bool isValidEmail() {
    return RegExp(
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(this);
  }
}
