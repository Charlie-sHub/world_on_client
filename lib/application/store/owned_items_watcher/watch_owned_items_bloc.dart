import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/item/item.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/store/use_case/watch_owned_items.dart';
import 'package:worldon/injection.dart';

part 'watch_owned_items_bloc.freezed.dart';
part 'watch_owned_items_event.dart';
part 'watch_owned_items_state.dart';

class WatchOwnedItemsBloc
    extends Bloc<WatchOwnedItemsEvent, WatchOwnedItemsState> {
  WatchOwnedItemsBloc() : super(const WatchOwnedItemsState.initial()) {
    on<_WatchOwnedItemsStarted>(_onWatchOwnedItemsStarted);
    on<_ResultsReceived>(_onResultsReceived);
  }

  StreamSubscription<Either<Failure, KtList<Item>>>?
      _ownedItemsStreamSubscription;

  void _onResultsReceived(_ResultsReceived event, Emitter emit) {
    emit(
      event.failureOrItems.fold(
        (failure) => WatchOwnedItemsState.loadFailure(failure),
        (items) => WatchOwnedItemsState.loadSuccess(items),
      ),
    );
  }

  FutureOr<void> _onWatchOwnedItemsStarted(_, Emitter emit) async {
    emit(const WatchOwnedItemsState.loadInProgress());
    await _ownedItemsStreamSubscription?.cancel();
    _ownedItemsStreamSubscription =
        getIt<WatchOwnedItems>()(getIt<NoParams>()).listen(
      (_failureOrItems) =>
          add(WatchOwnedItemsEvent.resultsReceived(_failureOrItems)),
    );
  }

  @override
  Future<void> close() async {
    await _ownedItemsStreamSubscription?.cancel();
    return super.close();
  }
}
