import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/experience_management/use_case/create_experience.dart';
import 'package:worldon/domain/experience_management/use_case/edit_experience.dart';
import 'package:worldon/domain/experience_management/use_case/get_experience.dart';

@LazySingleton(as: CreateExperience, env: [Environment.test])
class MockCreateExperience extends Mock implements CreateExperience {}

@LazySingleton(as: EditExperience, env: [Environment.test])
class MockEditExperience extends Mock implements EditExperience {}

@LazySingleton(as: GetExperience, env: [Environment.test])
class MockGetExperience extends Mock implements GetExperience {}
