import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/item/item.dart';
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
    );
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
