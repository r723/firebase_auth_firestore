import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/to_do_model.dart';

import '../infra/api_data.dart';
import '../service/failure.dart';
import '../service/utils.dart';

class HomeProvider extends ChangeNotifier {
  ApiData api = ApiData();

  Future<Either<Failure, ToDoModel>> addOrEditData(
      Map<String, dynamic> map) async {
    Either<Failure, ToDoModel>? responses;
    if (await isNetworkConnected()) {
      responses = await api.addOrEditTodos(map);

      responses.fold((l) {
        showToast(l.toString());
        return left(l);
      }, (r) {
        showToast("Saved");
        return right(r);
      });
    }
    return responses!;
  }

  
}
