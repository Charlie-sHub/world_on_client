import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/item/item.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/store/use_case/watch_purchasable_items.dart';
import 'package:worldon/injection.dart';

part 'watch_purchasable_items_bloc.freezed.dart';
part 'watch_purchasable_items_event.dart';
part 'watch_purchasable_items_state.dart';

@injectable
class WatchPurchasableItemsBloc
    extends Bloc<WatchPurchasableItemsEvent, WatchPurchasableItemsState> {
  WatchPurchasableItemsBloc()
      : super(const WatchPurchasableItemsState.initial()) {
    on<_WatchPurchasableItemsStarted>(_onWatchPurchasableItemsStarted);
    on<_ResultsReceived>(_onResultsReceived);
  }

  StreamSubscription<Either<Failure, KtList<Item>>>?
      _purchasableItemsStreamSubscription;

  void _onResultsReceived(_ResultsReceived event, Emitter emit) {
    emit(
      event.failureOrItems.fold(
        (failure) => WatchPurchasableItemsState.loadFailure(failure),
        (items) => WatchPurchasableItemsState.loadSuccess(items),
      ),
    );
  }

  FutureOr<void> _onWatchPurchasableItemsStarted(_, Emitter emit) async {
    emit(const WatchPurchasableItemsState.loadInProgress());
    await _purchasableItemsStreamSubscription?.cancel();
    _purchasableItemsStreamSubscription =
        getIt<WatchPurchasableItems>()(getIt<NoParams>()).listen(
      (failureOrItems) => add(
        WatchPurchasableItemsEvent.resultsReceived(failureOrItems),
      ),
    );
  }

  @override
  Future<void> close() async {
    await _purchasableItemsStreamSubscription?.cancel();
    return super.close();
  }
}
