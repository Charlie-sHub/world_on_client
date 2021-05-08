import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase;
import 'package:worldon/data/core/misc/firebase/firebase_helpers.dart';
import 'package:worldon/data/core/models/user/user_dto.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';

extension FirebaseUserDomainX on firebase.User {
  Future<User> toDomain() async {
    final _userDocument = await FirebaseFirestore.instance.userCollection.doc(uid).get();
    return UserDto.fromFirestore(_userDocument).toDomain().copyWith(
          id: UniqueId.fromUniqueString(uid),
        );
  }
}
