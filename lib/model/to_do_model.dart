import 'package:cloud_firestore/cloud_firestore.dart';

class ToDoModel {
  String? collectionId;
  String? title;
  String? subTitle;
  String? place;
  Timestamp? createdAt;
  bool? isEdited;

  ToDoModel(
      {this.collectionId,
      this.title,
      this.subTitle,
      this.createdAt,
      this.isEdited,
      this.place});

  Map<String, dynamic> toMap(ToDoModel user) {
    var data = <String, dynamic>{};
    data['collection_id'] = user.collectionId;
    data['title'] = user.title;
    data['subTitle'] = user.subTitle;
    data['createdAt'] = user.createdAt;
    data['isEdited'] = user.isEdited;
    data['place'] = user.place;
    return data;
  }

  // Named constructor
  ToDoModel.fromMap(Map<String, dynamic> mapData) {
    collectionId = mapData['collection_id'];
    title = mapData['title'];
    subTitle = mapData['subTitle'];
    createdAt = mapData['createdAt'];
    isEdited = mapData["isEdited"];
    place = mapData["place"];
  }
}
