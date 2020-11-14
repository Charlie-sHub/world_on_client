import 'package:cloud_firestore/cloud_firestore.dart';

extension FirestoreX on FirebaseFirestore {
  CollectionReference get userCollection => collection("users");

  CollectionReference get tagCollection => collection("tags");

  CollectionReference get experienceCollection => collection("experiences");

  CollectionReference get achievementCollection => collection("achievements");

  CollectionReference get objectiveCollection => collection("objectives");

  CollectionReference get commentCollection => collection("comments");

  CollectionReference get rewardCollection => collection("rewards");
}
