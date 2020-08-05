import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' as injectable;
import 'package:kt_dart/collection.dart';
import 'package:worldon/application/search/tag_selector/tag_selector_bloc.dart';
import 'package:worldon/injection.dart';

import '../../../domain/core/methods/get_valid_tag.dart';
import '../../../test_descriptions.dart';

void main() {
  setUpAll(
    () {
      configureDependencies(injectable.Environment.test);
    },
  );
  final tag = getValidTag();
  final tagList = KtList.of(tag);
  blocTest(
    TestDescription.shouldEmitInitial,
    build: () => getIt<TagSelectorBloc>(),
    expect: [],
  );
  blocTest(
    "${TestDescription.shouldEmitUpdated} with the added tag",
    build: () => getIt<TagSelectorBloc>(),
    act: (bloc) async => bloc.add(TagSelectorEvent.addedTag(tag)),
    expect: [TagSelectorState.initial().copyWith(tagsSelected: tagList)],
  );
  blocTest(
    "${TestDescription.shouldEmitUpdated} with the added and then removed tag",
    build: () => getIt<TagSelectorBloc>(),
    act: (bloc) async {
      bloc.add(TagSelectorEvent.addedTag(tag));
      bloc.add(TagSelectorEvent.removedTag(tag));
    },
    expect: [
      TagSelectorState.initial().copyWith(tagsSelected: tagList),
      TagSelectorState.initial(),
    ],
  );
}
