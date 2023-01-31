import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_application_1/controller/abstract_api.dart';
import 'package:flutter_application_1/model/to_do_model.dart';
import 'package:flutter_application_1/model/user_model.dart';
import 'package:flutter_application_1/service/failure.dart';
import 'package:google_sign_in/google_sign_in.dart';

class ApiData implements ApiInterface {
  @override
  Future<Either<Failure, Unit>> loginMe(Map<String, dynamic> map) async {
    try {
      if (map["provider_type"] != "google") {
        await FirebaseAuth.instance.signInWithEmailAndPassword(
            email: map["email_address"], password: map["password"]);
      } else {
        return await registerUser(map);
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        return left(const Failure.unexpected(
            errorMsg: 'No user found for that email.'));
      } else if (e.code == 'wrong-password') {
        return left(const Failure.unexpected(
            errorMsg: 'Wrong password provided for that user.'));
      }
    }
    return right(unit);
  }

  @override
  Future<Either<Failure, Unit>> registerUser(Map<String, dynamic> map) async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: map["email_address"],
        password: map["password"],
      );

      UserDataModel user = UserDataModel(
          firebaseId: FirebaseAuth.instance.currentUser?.uid,
          email: map["email_address"],
          name: map["name"],
          age: map["age"],
          createdAt: Timestamp.fromDate(DateTime.now()));
      await FirebaseFirestore.instance
          .collection("user")
          .doc(FirebaseAuth.instance.currentUser?.uid)
          .set(user.toMap(user), SetOptions(merge: true));

      if (map["provider_type"] == "google") {
        await FirebaseAuth.instance.signInWithEmailAndPassword(
            email: map["email_address"], password: map["password"]);
        final GoogleSignIn googleSignIn = GoogleSignIn();

        googleSignIn.disconnect().then((value) => print("signed out success."));
      }

      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        return left(const Failure.unexpected(
            errorMsg: "The password provided is too weak."));
      } else if (e.code == 'email-already-in-use') {
        if (map["provider_type"] == "google") {
          await FirebaseAuth.instance.signInWithEmailAndPassword(
              email: map["email_address"], password: map["password"]);
          final GoogleSignIn googleSignIn = GoogleSignIn();

          googleSignIn
              .disconnect()
              .then((value) => print("signed out success."));
          return right(unit);
        } else {
          return left(const Failure.unexpected(
              errorMsg: "The account already exists for that email."));
        }
      }
    } catch (e) {
      return left(Failure.commonFailure());
    }
    return right(unit);
  }

  @override
  Future<Either<Failure, ToDoModel>> addOrEditTodos(
      Map<String, dynamic> map) async {
    ToDoModel toDoModel = ToDoModel(
        createdAt: Timestamp.fromDate(map["time"]),
        title: map["title"],
        subTitle: map["subTitle"],
        isEdited: map["isEdited"]);

    if (map["collectionId"] != "") {
      await FirebaseFirestore.instance
          .collection('user')
          .doc(FirebaseAuth.instance.currentUser?.uid)
          .collection('todos')
          .doc(map["collectionId"])
          .update(toDoModel.toMap(toDoModel));
    } else {
      await FirebaseFirestore.instance
          .collection('user')
          .doc(FirebaseAuth.instance.currentUser?.uid)
          .collection('todos')
          .doc()
          .set(toDoModel.toMap(toDoModel));
    }

    return right(toDoModel);
  }
}
