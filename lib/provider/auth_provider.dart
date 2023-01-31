import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_application_1/infra/api_data.dart';
import 'package:flutter_application_1/service/failure.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../service/utils.dart';

class AuthProvider extends ChangeNotifier {
  ApiData api = ApiData();

  final GoogleSignIn _googleSignIn = GoogleSignIn();

  Future<Either<Failure, Unit>> loginMeAuth(Map<String, dynamic> map) async {
    Either<Failure, Unit>? responses;
    if (await isNetworkConnected()) {
      responses = await api.loginMe(map);

      responses.fold((l) {
        showToast(l.toString());
        return left(l);
      }, (r) {
        showToast("Login successfully");
        return right(r);
      });
    }
    return responses!;
  }

  Future<Either<Failure, Unit>> registerUser(Map<String, dynamic> map) async {
    Either<Failure, Unit> responses;
    if (await isNetworkConnected()) {
      responses = await api.registerUser(map);
      responses.fold((l) => showToast(l.toString()), (r) async {
        showToast("Register Successfully");
      });
    }
    return right(unit);
  }

  Future<Either<Failure, Unit>> signInWithGoogle() async {
    Either<Failure, Unit>? response;
    if (await isNetworkConnected()) {
      try {
        final googleUser = await _googleSignIn.signIn();
        if (googleUser != null) {
          Map<String, dynamic> map = {
            "email_address": googleUser.email,
            "name": googleUser.displayName,
            "provider_type": 'google',
            "password": "123456"
          };

          response = await loginMeAuth(map);
          return response;
        }
      } catch (e) {
        print("google sign in exception ====> ${e.toString()}");
        showToast(e.toString());
      }
    } else {
      showToast("Connection required");
    }

    return response!;
  }
}
