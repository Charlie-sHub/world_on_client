import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/tag_management/use_case/create_tag.dart';
import 'package:worldon/domain/tag_management/use_case/delete_tag.dart';
import 'package:worldon/domain/tag_management/use_case/edit_tag.dart';
import 'package:worldon/domain/tag_management/use_case/get_tag.dart';
import 'package:worldon/domain/tag_management/use_case/get_tag_creator.dart';
import 'package:worldon/domain/tag_management/use_case/watch_all_tags.dart';
import 'package:worldon/domain/tag_management/use_case/watch_tags_by_creator.dart';

import 'add_tag_to_interests.dart';
import 'dismiss_tag_from_interests.dart';

@LazySingleton(as: CreateTag, env: [Environment.test])
class MockCreateTag extends Mock implements CreateTag {}

@LazySingleton(as: DeleteTag, env: [Environment.test])
class MockDeleteTag extends Mock implements DeleteTag {}

@LazySingleton(as: EditTag, env: [Environment.test])
class MockEditTag extends Mock implements EditTag {}

@LazySingleton(as: WatchAllTags, env: [Environment.test])
class MockGetAllTags extends Mock implements WatchAllTags {}

@LazySingleton(as: GetTag, env: [Environment.test])
class MockGetTag extends Mock implements GetTag {}

@LazySingleton(as: GetTagCreator, env: [Environment.test])
class MockGetTagCreator extends Mock implements GetTagCreator {}

@LazySingleton(as: WatchTagsByCreator, env: [Environment.test])
class MockGetTagsByCreator extends Mock implements WatchTagsByCreator {}

@LazySingleton(as: AddTagToInterests, env: [Environment.test])
class MockAddTagToInterests extends Mock implements AddTagToInterests {}

@LazySingleton(as: DismissTagFromInterests, env: [Environment.test])
class MockDismissTagFromInterests extends Mock implements DismissTagFromInterests {}
