import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/main_feed/use_case/fill_feed.dart';

@LazySingleton(as: FillFeed, env: Environment.test)
class MockFillFeed extends Mock implements FillFeed {}
