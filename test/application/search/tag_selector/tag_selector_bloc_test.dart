import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' as injectable;
import 'package:kt_dart/collection.dart';
import 'package:worldon/application/search/tag_selector/tag_selector_bloc.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_tag.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';
import 'package:worldon/injection.dart';

import '../../../test_descriptions.dart';

void main() {
  setUpAll(
    () {
      configureDependencies(injectable.Environment.test);
    },
  );
  final _tag = getValidTag();
  final _tag2 = _tag.copyWith(id: UniqueId());
  final _tag3 = _tag.copyWith(id: UniqueId());
  final _tag4 = _tag.copyWith(id: UniqueId());
  final _tag5 = _tag.copyWith(id: UniqueId());
  final _tag6 = _tag.copyWith(id: UniqueId());
  final _tag7 = _tag.copyWith(id: UniqueId());
  final _tag8 = _tag.copyWith(id: UniqueId());
  final _tag9 = _tag.copyWith(id: UniqueId());
  final _tag10 = _tag.copyWith(id: UniqueId());
  final _tag11 = _tag.copyWith(id: UniqueId());
  final _tagSet = KtSet.of(_tag);
  blocTest(
    TestDescription.shouldEmitInitial,
    build: () => getIt<TagSelectorBloc>(),
    expect: [],
  );
  blocTest(
    "${TestDescription.shouldEmitUpdated} with the added tag",
    build: () => getIt<TagSelectorBloc>(),
    act: (bloc) async => bloc.add(TagSelectorEvent.addedTag(_tag)),
    expect: [TagSelectorState.initial().copyWith(tagsSelected: _tagSet)],
  );
  blocTest(
    "${TestDescription.shouldEmitUpdated} with the added and then removed tag",
    build: () => getIt<TagSelectorBloc>(),
    act: (bloc) async {
      bloc.add(TagSelectorEvent.addedTag(_tag));
      bloc.add(TagSelectorEvent.removedTag(_tag));
    },
    expect: [
      TagSelectorState.initial().copyWith(tagsSelected: _tagSet),
      TagSelectorState.initial(),
    ],
  );
  blocTest(
    "${TestDescription.shouldEmitUpdated} with the added tags until it reaches 10 tags",
    build: () => getIt<TagSelectorBloc>(),
    act: (bloc) async {
      bloc.add(TagSelectorEvent.addedTag(_tag));
      bloc.add(TagSelectorEvent.addedTag(_tag2));
      bloc.add(TagSelectorEvent.addedTag(_tag3));
      bloc.add(TagSelectorEvent.addedTag(_tag4));
      bloc.add(TagSelectorEvent.addedTag(_tag5));
      bloc.add(TagSelectorEvent.addedTag(_tag6));
      bloc.add(TagSelectorEvent.addedTag(_tag7));
      bloc.add(TagSelectorEvent.addedTag(_tag8));
      bloc.add(TagSelectorEvent.addedTag(_tag9));
      bloc.add(TagSelectorEvent.addedTag(_tag10));
      bloc.add(TagSelectorEvent.addedTag(_tag11));
    },
    expect: [
      TagSelectorState.initial().copyWith(tagsSelected: _tagSet),
      TagSelectorState.initial().copyWith(
        tagsSelected: KtSet.of(
          _tag,
          _tag2,
        ),
      ),
      TagSelectorState.initial().copyWith(
        tagsSelected: KtSet.of(
          _tag,
          _tag2,
          _tag3,
        ),
      ),
      TagSelectorState.initial().copyWith(
        tagsSelected: KtSet.of(
          _tag,
          _tag2,
          _tag3,
          _tag4,
        ),
      ),
      TagSelectorState.initial().copyWith(
        tagsSelected: KtSet.of(
          _tag,
          _tag2,
          _tag3,
          _tag4,
          _tag5,
        ),
      ),
      TagSelectorState.initial().copyWith(
        tagsSelected: KtSet.of(
          _tag,
          _tag2,
          _tag3,
          _tag4,
          _tag5,
          _tag6,
        ),
      ),
      TagSelectorState.initial().copyWith(
        tagsSelected: KtSet.of(
          _tag,
          _tag2,
          _tag3,
          _tag4,
          _tag5,
          _tag6,
          _tag7,
        ),
      ),
      TagSelectorState.initial().copyWith(
        tagsSelected: KtSet.of(
          _tag,
          _tag2,
          _tag3,
          _tag4,
          _tag5,
          _tag6,
          _tag7,
          _tag8,
        ),
      ),
      TagSelectorState.initial().copyWith(
        tagsSelected: KtSet.of(
          _tag,
          _tag2,
          _tag3,
          _tag4,
          _tag5,
          _tag6,
          _tag7,
          _tag8,
          _tag9,
        ),
      ),
      TagSelectorState.initial().copyWith(
        tagsSelected: KtSet.of(
          _tag,
          _tag2,
          _tag3,
          _tag4,
          _tag5,
          _tag6,
          _tag7,
          _tag8,
          _tag9,
          _tag10,
        ),
      ),
    ],
  );
}
