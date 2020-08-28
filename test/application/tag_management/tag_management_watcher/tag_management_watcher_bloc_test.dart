import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' as injectable;
import 'package:kt_dart/kt.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/application/tag_management/tag_management_watcher/tag_management_watcher_bloc.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/domain/tag_management/use_case/watch_all_tags.dart';
import 'package:worldon/injection.dart';

import '../../../domain/core/methods/create_stream.dart';
import '../../../test_descriptions.dart';

void main() {
  WatchAllTags getAllTags;
  setUpAll(
    () {
      configureDependencies(injectable.Environment.test);
      getAllTags = getIt<WatchAllTags>();
    },
  );
  final tagList = KtList.of(Tag.empty());
  const failure = Failure.coreData(CoreDataFailure.serverError(errorString: TestDescription.errorString));
  blocTest(
    TestDescription.shouldEmitInitial,
    build: () => getIt<TagManagementWatcherBloc>(),
    expect: [],
  );
  blocTest(
    TestDescription.shouldEmitSuccess,
    build: () {
      when(getAllTags.call(any)).thenAnswer((_) => createStream(right(tagList)));
      return getIt<TagManagementWatcherBloc>();
    },
    act: (bloc) async => bloc.add(const TagManagementWatcherEvent.watchAllTagsStarted()),
    verify: (_) async {
      verify(getAllTags.call(any));
      verifyNoMoreInteractions(getAllTags);
    },
    expect: [
      const TagManagementWatcherState.loadInProgress(),
      TagManagementWatcherState.loadSuccess(tagList),
    ],
  );
  blocTest(
    TestDescription.shouldEmitFailure,
    build: () {
      when(getAllTags.call(any)).thenAnswer((_) => createStream(left(failure)));
      return getIt<TagManagementWatcherBloc>();
    },
    act: (bloc) async => bloc.add(const TagManagementWatcherEvent.watchAllTagsStarted()),
    verify: (_) async {
      verify(getAllTags.call(any));
      verifyNoMoreInteractions(getAllTags);
    },
    expect: [
      const TagManagementWatcherState.loadInProgress(),
      const TagManagementWatcherState.loadFailure(failure),
    ],
  );
}
