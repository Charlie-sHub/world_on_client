import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:worldon/domain/authentication/repository/authentication_repository_interface.dart';
import 'package:worldon/domain/core/failures/error.dart';

import '../../../injection.dart';

extension FirestoreX on FirebaseFirestore {
  Future<DocumentReference> userDocument() async {
    final _userOption = await getIt<AuthenticationRepositoryInterface>().getLoggedInUser();
    final _user = _userOption.getOrElse(() => throw UnAuthenticatedError());
    return FirebaseFirestore.instance.collection("users").doc(_user.id.getOrCrash());
  }

  CollectionReference get userCollection => collection("users");

  CollectionReference get tagCollection => collection("tags");

  CollectionReference get experienceCollection => collection("experiences");

  CollectionReference get achievementCollection => collection("achievements");

  CollectionReference get notificationCollection => collection("notifications");
}

extension DocumentReferenceX on DocumentReference {
  CollectionReference get commentCollection => collection("comments");
}
