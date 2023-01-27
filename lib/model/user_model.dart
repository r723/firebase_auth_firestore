
import 'package:cloud_firestore/cloud_firestore.dart';

class UserDataModel {
  String? firebaseId;
  String? name;
  String?email;
  String? age;
  Timestamp? createdAt;

  UserDataModel({
    this.firebaseId,
    this.name,
    this.email,
    this.createdAt,
    this.age,
  });

  Map<String,dynamic> toMap(UserDataModel user) {
    var data = Map<String, dynamic>();
    data['firebase_id'] = user.firebaseId;
    data['name'] = user.name;
    data['email_address'] = user.email;
    data['created_at'] = user.createdAt;
    data["age"] = user.age;
    return data;
  }

  // Named constructor
  UserDataModel.fromMap(Map<String, dynamic> mapData) {
    firebaseId = mapData['firebase_id'];
    name = mapData['name'];
    email = mapData['email_address'];
    createdAt = mapData['created_at'];
    age = mapData['age'];
  }
}
