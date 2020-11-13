import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase;
import 'package:worldon/data/core/misc/firebase_collections.dart';
import 'package:worldon/data/core/models/user/user_dto.dart';
import 'package:worldon/domain/core/entities/user/user.dart';

extension FirebaseUserDomainX on firebase.User {
  Future<User> toDomain() async => UserDto.fromFirestore(
        await FirebaseFirestore.instance.collection(FirebaseCollections.users).doc(uid).get(),
      ).toDomain();
}
