import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_application_1/infra/api_data.dart';
import 'package:flutter_application_1/service/failure.dart';

import '../service/utils.dart';

class AuthProvider extends ChangeNotifier {
  ApiData api = ApiData();

  Future<Either<Failure, Unit>> loginMe(Map<String, dynamic> map) async {
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
}
