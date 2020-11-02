import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/main_feed/use_case/watch_feed.dart';

@LazySingleton(as: WatchFeed, env: [Environment.test])
class MockFillFeed extends Mock implements WatchFeed {}
