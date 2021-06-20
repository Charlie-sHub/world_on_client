import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:worldon/data/core/models/user/user_dto.dart';
import 'package:worldon/domain/core/entities/user/user.dart' as entity;
import 'package:worldon/domain/core/failures/error.dart';
import 'package:worldon/injection.dart';

extension FirestoreX on FirebaseFirestore {
  Future<DocumentReference> experienceDocumentReference(
    String experienceId,
  ) async =>
      experienceCollection.doc(
        experienceId,
      );

  Future<DocumentReference> currentUserReference() async {
    final _firebaseAuthInstance = getIt<FirebaseAuth>();
    final _firebaseUser = _firebaseAuthInstance.currentUser;
    if (_firebaseUser != null) {
      final _documentReference = userCollection.doc(_firebaseUser.uid);
      return _documentReference;
    } else {
      throw UnAuthenticatedError();
    }
  }

  Future<UserDto> currentUserDto() async {
    final _documentReference = await currentUserReference();
    final _userDocument = await _documentReference.get();
    final _userDto = UserDto.fromFirestore(_userDocument);
    return _userDto;
  }

  Future<entity.User> currentUser() async {
    final _userDto = await currentUserDto();
    final _user = _userDto.toDomain();
    return _user;
  }

// Not a fan of all these hardcoded strings
  Future<DocumentSnapshot> getCoinProductIds() => collection("coins").doc("coins").get();

  CollectionReference get userCollection => collection("users");

  CollectionReference get tagCollection => collection("tags");

  CollectionReference get experienceCollection => collection("experiences");

  CollectionReference get itemCollection => collection("items");

  CollectionReference get promotionPlanCollection => collection("promotionPlans");

  CollectionReference get achievementCollection => collection("achievements");

  CollectionReference get notificationCollection => collection("notifications");
}

extension DocumentReferenceX on DocumentReference {
  CollectionReference get commentCollection => collection("comments");

  CollectionReference get saveCollection => collection("saves");
}
