import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:worldon/data/core/models/achievement/achievement_dto.dart';
import 'package:worldon/data/core/models/coins/coins_dto.dart';
import 'package:worldon/data/core/models/comment/comment_dto.dart';
import 'package:worldon/data/core/models/experience/experience_dto.dart';
import 'package:worldon/data/core/models/experience/objective_list/objective_id_list_dto.dart';
import 'package:worldon/data/core/models/item/item_dto.dart';
import 'package:worldon/data/core/models/notification/notification_dto.dart';
import 'package:worldon/data/core/models/promotion_plan/promotion_plan_dto.dart';
import 'package:worldon/data/core/models/tag/tag_dto.dart';
import 'package:worldon/data/core/models/user/user_dto.dart';
import 'package:worldon/domain/core/entities/user/user.dart' as entity;
import 'package:worldon/domain/core/failures/error.dart';
import 'package:worldon/injection.dart';

extension FirestoreX on FirebaseFirestore {
  Future<DocumentReference<ExperienceDto>> experienceDocumentReference(
    String experienceId,
  ) async =>
      experienceCollection.doc(
        experienceId,
      );

  Future<DocumentReference<UserDto>> currentUserReference() async {
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
    final _userDto = _userDocument.data()!;
    return _userDto;
  }

  Future<entity.User> currentUser() async {
    final _userDto = await currentUserDto();
    final _user = _userDto.toDomain();
    return _user;
  }

  CollectionReference<CoinsDto> get coinCollection => collection("coins").withConverter<CoinsDto>(
        fromFirestore: (snapshots, _) => CoinsDto.fromJson(snapshots.data()!),
        toFirestore: (coinDto, _) => coinDto.toJson(),
      );

  CollectionReference<UserDto> get userCollection => collection("users").withConverter<UserDto>(
        fromFirestore: (snapshots, _) => UserDto.fromJson(snapshots.data()!),
        toFirestore: (userDto, _) => userDto.toJson(),
      );

  CollectionReference<TagDto> get tagCollection => collection("tags").withConverter<TagDto>(
        fromFirestore: (snapshots, _) => TagDto.fromJson(snapshots.data()!),
        toFirestore: (tagDto, _) => tagDto.toJson(),
      );

  CollectionReference<ExperienceDto> get experienceCollection =>
      collection("experiences").withConverter<ExperienceDto>(
        fromFirestore: (snapshots, _) => ExperienceDto.fromJson(snapshots.data()!),
        toFirestore: (experienceDto, _) => experienceDto.toJson(),
      );

  CollectionReference<ItemDto> get itemCollection => collection("items").withConverter<ItemDto>(
        fromFirestore: (snapshots, _) => ItemDto.fromJson(snapshots.data()!),
        toFirestore: (itemDto, _) => itemDto.toJson(),
      );

  CollectionReference<PromotionPlanDto> get promotionPlanCollection =>
      collection("promotionPlans").withConverter<PromotionPlanDto>(
        fromFirestore: (snapshots, _) => PromotionPlanDto.fromJson(snapshots.data()!),
        toFirestore: (promotionPlan, _) => promotionPlan.toJson(),
      );

  CollectionReference<AchievementDto> get achievementCollection =>
      collection("achievements").withConverter<AchievementDto>(
        fromFirestore: (snapshots, _) => AchievementDto.fromJson(snapshots.data()!),
        toFirestore: (achievementDto, _) => achievementDto.toJson(),
      );

  CollectionReference<NotificationDto> get notificationCollection =>
      collection("notifications").withConverter<NotificationDto>(
        fromFirestore: (snapshots, _) => NotificationDto.fromJson(snapshots.data()!),
        toFirestore: (notificationDto, _) => notificationDto.toJson(),
      );
}

extension DocumentReferenceX on DocumentReference {
  CollectionReference<CommentDto> get commentCollection =>
      collection("comments").withConverter<CommentDto>(
        fromFirestore: (snapshots, _) => CommentDto.fromJson(snapshots.data()!),
        toFirestore: (commentDto, _) => commentDto.toJson(),
      );

  CollectionReference<ObjectiveIdListDto> get saveCollection =>
      collection("saves").withConverter<ObjectiveIdListDto>(
        fromFirestore: (snapshots, _) => ObjectiveIdListDto.fromJson(snapshots.data()!),
        toFirestore: (objectiveListDto, _) => objectiveListDto.toJson(),
      );
}
