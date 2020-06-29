import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/main_feed/repository/main_feed_repository_interface.dart';

@LazySingleton(
  as: MainFeedRepositoryInterface,
  env: Environment.test,
)
class MockMainFeedRepository extends Mock implements MainFeedRepositoryInterface {}
