import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';

class Comment {
  String username;
  String comment;
  final datePublished;
  List likes;
  String profilePhoto;
  String uid;
  String id;

  Comment({
    required this.username,
    required this.comment,
    required this.datePublished,
    required this.likes,
    required this.profilePhoto,
    required this.uid,
    required this.id,
  });

  Map<String, dynamic> toJson() => {
    "username": username,
    "uid": uid,
    "id": id,
    "likes": likes,
    "comment": comment,
    "datePublished": datePublished,

    "profilePhoto": profilePhoto,
  };

  static Comment fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;

    return Comment(
      username: snapshot['username'],
      uid: snapshot['uid'],
      id: snapshot['id'],
      likes: snapshot['likes'],
      comment: snapshot['comment'],
      datePublished: snapshot['datePublished'],
      profilePhoto: snapshot['profilePhoto'],
    );
  }
}
