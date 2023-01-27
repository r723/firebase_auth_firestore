import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/home_screen.dart';
import 'package:flutter_application_1/screen/login_screen.dart';
import 'package:flutter_application_1/screen/register_screen.dart';
import 'package:flutter_application_1/service/utils.dart';
import 'package:flutter_application_1/theme/palette.dart';
import 'package:flutter_application_1/theme/routes.dart';
import 'package:sizer/sizer.dart';
import 'package:stacked_services/stacked_services.dart';

class FirebaseAppWidgetTree extends StatelessWidget {
  const FirebaseAppWidgetTree();

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        title: "Demo",
        initialRoute: '/',
        routes: {'/': (_) => const PreLoader()},
        debugShowCheckedModeBanner: false,
        navigatorKey: StackedService.navigatorKey,
        theme: Palette.appTheme,
        navigatorObservers: const [],
        localizationsDelegates: const [],
        supportedLocales: const <Locale>[
          Locale('en', ''),
          Locale('ar', ''),
        ],
        onGenerateRoute: (RouteSettings settings) {
          Widget? screen;
          switch (settings.name) {
            case Routes.LOGIN:
              screen = const LoginScreen();
              break;
            case Routes.REGISTER:
              screen = const RegisterScreen();
              break;
            case Routes.HOME:
              screen = const HomeScreen();
              break;
          }

          return MaterialPageRoute(
            builder: (context) => screen ?? const SizedBox(),
          );
        },
      );
    });
  }
}

class PreLoader extends StatefulWidget {
  const PreLoader({super.key});

  @override
  State<PreLoader> createState() => _PreLoaderState();
}

class _PreLoaderState extends State<PreLoader> {
  @override
  void initState() {
    _navigateToHome();
    super.initState();
  }

  Future<void> _navigateToHome() async {
    Future.delayed(const Duration(seconds: 3)).then((value) async {
      if (FirebaseAuth.instance.currentUser != null) {
        await navigator.pushNamedAndRemoveUntil(Routes.HOME);
      } else {
        await navigator.pushNamedAndRemoveUntil(Routes.LOGIN);
      }
    });
    print("log");
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: CircularProgressIndicator()));
  }
}
