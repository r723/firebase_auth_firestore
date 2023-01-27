import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/login_screen.dart';
import 'package:flutter_application_1/service/utils.dart';
import 'package:flutter_application_1/theme/palette.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import '../provider/auth_provider.dart';
import '../theme/routes.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  AuthProvider? _provider;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    _provider = Provider.of<AuthProvider>(context);
    return Scaffold(
      appBar: AppBar(title: const Text("New user")),
      body: Container(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(height: 5.h),
              TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                controller: emailController,
                validator: (input) =>
                    input!.isValidEmail() ? null : "Enter valid email",
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                    hintText: 'Enter valid email id as abc@gmail.com'),
              ),
              SizedBox(height: 4.h),
              TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                controller: nameController,
                validator: (input) =>
                    input!.length <= 3 ? "Please enter name" : "",
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Name',
                    hintText: 'Enter Name'),
              ),
              SizedBox(height: 4.h),
              TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                controller: ageController,
                keyboardType: TextInputType.number,
                validator: (input) =>
                    input!.length < 2 ? "Please enter age" : "",
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Age',
                    hintText: 'Enter age'),
              ),
              SizedBox(height: 4.h),
              TextFormField(
                controller: passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    hintText: 'Enter secure password'),
              ),
              SizedBox(height: 15.h),
              Container(
                height: 50,
                width: 250,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Palette.appTheme.primaryColor),
                child: TextButton(
                  onPressed: () async {
                    var map = {
                      "email_address": emailController.text,
                      "password": passwordController.text,
                      "name": nameController.text,
                      "age": ageController.text,
                    };
                    var res = await _provider!.registerUser(map);
                    if (res.isRight()) {
                      await navigator.navigateTo(Routes.LOGIN);
                    }
                  },
                  child: const Text(
                    'Register User',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class registerScreenUi extends StatefulWidget {
  const registerScreenUi({super.key});

  @override
  State<registerScreenUi> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<registerScreenUi> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
