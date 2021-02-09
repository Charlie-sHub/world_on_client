import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/store/use_case/buy_coin.dart';

import '../../../injection.dart';

part 'buy_coins_bloc.freezed.dart';

part 'buy_coins_event.dart';

part 'buy_coins_state.dart';

@injectable
class BuyCoinsBloc extends Bloc<BuyCoinsEvent, BuyCoinsState> {
  BuyCoinsBloc() : super(const BuyCoinsState.initial());

  @override
  Stream<BuyCoinsState> mapEventToState(BuyCoinsEvent event) async* {
    yield* event.map(
      boughtCoins: _onCoinBought,
    );
  }

  Stream<BuyCoinsState> _onCoinBought(_BoughtCoins event) async* {
    yield const BuyCoinsState.actionInProgress();
    final _failureOrUnit = await getIt<BuyCoins>()(
      Params(amount: event.amount),
    );
    yield _failureOrUnit.fold(
      (failure) => BuyCoinsState.purchaseFailure(failure),
      (_) => const BuyCoinsState.purchaseSuccess(),
    );
  }
}
