import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/validation/objects/search_term.dart';
import 'package:worldon/domain/search/use_case/watch_search_experiences_by_name.dart';
import 'package:worldon/injection.dart';

part 'search_experiences_by_name_watcher_bloc.freezed.dart';
part 'search_experiences_by_name_watcher_event.dart';
part 'search_experiences_by_name_watcher_state.dart';

@injectable
class SearchExperiencesByNameWatcherBloc extends Bloc<
    SearchExperiencesByNameWatcherEvent, SearchExperiencesByNameWatcherState> {
  SearchExperiencesByNameWatcherBloc()
      : super(const SearchExperiencesByNameWatcherState.initial()) {
    on<_WatchExperiencesFoundByNameStarted>(
      _onWatchExperiencesFoundByNameStarted,
    );
    on<_SearchResultsReceived>(_onSearchResultsReceived);
  }

  StreamSubscription<Either<Failure, KtList<Experience>>>?
      _experiencesSearchStreamSubscription;

  void _onSearchResultsReceived(_SearchResultsReceived event, Emitter emit) {
    emit(
      event.failureOrExperiences.fold(
        (failure) => SearchExperiencesByNameWatcherState.searchFailure(failure),
        (experiencesFound) =>
            SearchExperiencesByNameWatcherState.searchSuccess(experiencesFound),
      ),
    );
  }

  FutureOr<void> _onWatchExperiencesFoundByNameStarted(
    _WatchExperiencesFoundByNameStarted event,
    Emitter emit,
  ) async {
    emit(const SearchExperiencesByNameWatcherState.searchInProgress());
    await _experiencesSearchStreamSubscription?.cancel();
    _experiencesSearchStreamSubscription =
        getIt<WatchSearchExperiencesByName>()(
      Params(name: event.searchTerm),
    ).listen(
      (failureOrExperience) => add(
        SearchExperiencesByNameWatcherEvent.searchResultsReceived(
          failureOrExperience,
        ),
      ),
    );
  }

  @override
  Future<void> close() async {
    await _experiencesSearchStreamSubscription?.cancel();
    return super.close();
  }
}
