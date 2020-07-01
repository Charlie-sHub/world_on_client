import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/tag_management/use_case/create_tag.dart';
import 'package:worldon/domain/tag_management/use_case/delete_tag.dart';
import 'package:worldon/domain/tag_management/use_case/edit_tag.dart';
import 'package:worldon/domain/tag_management/use_case/get_all_tags.dart';
import 'package:worldon/domain/tag_management/use_case/get_tag.dart';
import 'package:worldon/domain/tag_management/use_case/get_tag_creator.dart';
import 'package:worldon/domain/tag_management/use_case/get_tags_by_creator.dart';

@LazySingleton(as: CreateTag, env: Environment.test)
class MockCreateTag extends Mock implements CreateTag {}

@LazySingleton(as: DeleteTag, env: Environment.test)
class MockDeleteTag extends Mock implements DeleteTag {}

@LazySingleton(as: EditTag, env: Environment.test)
class MockEditTag extends Mock implements EditTag {}

@LazySingleton(as: GetAllTags, env: Environment.test)
class MockGetAllTags extends Mock implements GetAllTags {}

@LazySingleton(as: GetTag, env: Environment.test)
class MockGetTag extends Mock implements GetTag {}

@LazySingleton(as: GetTagCreator, env: Environment.test)
class MockGetTagCreator extends Mock implements GetTagCreator {}

@LazySingleton(as: GetTagsByCreator, env: Environment.test)
class MockGetTagsByCreator extends Mock implements GetTagsByCreator {}
