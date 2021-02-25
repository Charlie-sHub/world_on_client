import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class ServerTimestampConverter implements JsonConverter<DateTime, Timestamp> {
  const ServerTimestampConverter();

  @override
  DateTime fromJson(Timestamp timestamp) => timestamp == null ? DateTime.now() : timestamp.toDate();

  @override
  Timestamp toJson(DateTime dateTime) => Timestamp.fromDate(dateTime);
}
