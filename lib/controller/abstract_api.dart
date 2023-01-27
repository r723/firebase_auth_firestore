// import 'package:insync/models/models.dart';

// import 'package:insync/model/models.dart';

import 'package:dartz/dartz.dart';
import 'package:flutter_application_1/model/to_do_model.dart';
import 'package:flutter_application_1/service/failure.dart';

abstract class ApiInterface<T> {
  Future<Either<Failure, Unit>> loginMe(Map<String, dynamic> map);

  Future<Either<Failure, Unit>> registerUser(Map<String, dynamic> map);

  Future<Either<Failure, ToDoModel>> addOrEditTodos(Map<String,dynamic> map);

}
