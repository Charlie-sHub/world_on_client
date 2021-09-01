import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/authentication/use_case/get_logged_in_user.dart';
import 'package:worldon/domain/core/entities/item/item.dart';
import 'package:worldon/domain/core/failures/error.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/store/use_case/buy_item.dart';
import 'package:worldon/injection.dart';

part 'buy_item_bloc.freezed.dart';
part 'buy_item_event.dart';
part 'buy_item_state.dart';

@injectable
class BuyItemBloc extends Bloc<BuyItemEvent, BuyItemState> {
  BuyItemBloc() : super(const BuyItemState.initial());

  @override
  Stream<BuyItemState> mapEventToState(BuyItemEvent event) async* {
    yield* event.map(
      boughtItem: _onItemBought,
      initialized: _onInitialized,
    );
  }

  Stream<BuyItemState> _onInitialized(_Initialized event) async* {
    yield const BuyItemState.actionInProgress();
    final _userOption = await getIt<GetLoggedInUser>()(
      getIt<NoParams>(),
    );
    final _user = _userOption.fold(
      () => throw UnAuthenticatedError(),
      id,
    );
    final _itemIds = _user.items
        .map(
          (_item) => _item.id,
        )
        .toList();
    if (_itemIds.contains(event.item.id)) {
      yield const BuyItemState.owns();
    } else {
      yield const BuyItemState.doesNotOwn();
    }
  }

  Stream<BuyItemState> _onItemBought(_BoughtItem event) async* {
    yield const BuyItemState.actionInProgress();
    final _failureOrUnit = await getIt<BuyItem>()(
      Params(item: event.item),
    );
    yield _failureOrUnit.fold(
      (failure) => BuyItemState.purchaseFailure(failure),
      (_) => const BuyItemState.purchaseSuccess(),
    );
  }
}
