import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/firebase_options.dart';
import 'package:flutter_application_1/provider/auth_provider.dart';
import 'package:flutter_application_1/provider/home_provider.dart';
import 'package:flutter_application_1/service/locator.dart';
import 'package:provider/provider.dart';

import 'firebase_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  configureInjection();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthProvider()),
        ChangeNotifierProvider(create: (_) => HomeProvider()),
      ],
      child: const FirebaseAppWidgetTree(),
    ),
  );
}
