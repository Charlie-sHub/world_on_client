import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/entities/user/user.dart';

/// Repository for the main feed of the application
abstract class MainFeedRepositoryInterface {
  /// Returns a [KtSet] of [Experience]s corresponding to the latest creations of the [User]s the logged in [User] follows
  Stream<Either<Failure, KtSet<Experience>>> fillFeed();
}
