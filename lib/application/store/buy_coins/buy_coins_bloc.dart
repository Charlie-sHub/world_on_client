import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/store/use_case/buy_coin.dart';
import 'package:worldon/injection.dart';

part 'buy_coins_bloc.freezed.dart';
part 'buy_coins_event.dart';
part 'buy_coins_state.dart';

@injectable
class BuyCoinsBloc extends Bloc<BuyCoinsEvent, BuyCoinsState> {
  BuyCoinsBloc() : super(const BuyCoinsState.initial()) {
    on<_BoughtCoins>(_onCoinBought);
  }

  FutureOr<void> _onCoinBought(_BoughtCoins event, Emitter emit) async {
    emit(const BuyCoinsState.actionInProgress());
    final failureOrUnit = await getIt<BuyCoins>()(
      Params(amount: event.amount),
    );
    emit(
      failureOrUnit.fold(
        (failure) => BuyCoinsState.purchaseFailure(failure),
        (_) => const BuyCoinsState.purchaseSuccess(),
      ),
    );
  }
}
