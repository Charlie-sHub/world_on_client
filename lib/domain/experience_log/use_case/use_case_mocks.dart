import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/experience_log/use_case/add_experience_to_log.dart';
import 'package:worldon/domain/experience_log/use_case/dismiss_experience_from_log.dart';
import 'package:worldon/domain/experience_log/use_case/load_user_log.dart';

@LazySingleton(as: AddExperienceToLog, env: Environment.test)
class MockAddExperienceToLog extends Mock implements AddExperienceToLog {}

@LazySingleton(as: DismissExperienceFromLog, env: Environment.test)
class MockDismissExperienceFromLog extends Mock implements DismissExperienceFromLog {}

@LazySingleton(as: LoadUserLog, env: Environment.test)
class MockLoadUserLog extends Mock implements LoadUserLog {}
