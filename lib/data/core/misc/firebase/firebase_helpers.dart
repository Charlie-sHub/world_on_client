import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:worldon/data/core/models/user/user_dto.dart';
import 'package:worldon/domain/authentication/repository/authentication_repository_interface.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/failures/error.dart';

import '../../../../injection.dart';

extension FirestoreX on FirebaseFirestore {
  Future<DocumentReference> experienceDocument(String experienceId) async => FirebaseFirestore.instance.experienceCollection.doc(experienceId);

  Future<DocumentReference> userDocument() async {
    final _userOption = await getIt<AuthenticationRepositoryInterface>().getLoggedInUser();
    final _user = _userOption.getOrElse(() => throw UnAuthenticatedError());
    return FirebaseFirestore.instance.userCollection.doc(_user.id.getOrCrash());
  }

  Future<User> currentUser() async {
    final _userDocument = await userDocument();
    final _userDto = UserDto.fromFirestore(await _userDocument.get());
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
