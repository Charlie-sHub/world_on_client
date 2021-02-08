import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/store/use_case/buy_coin.dart';

import '../../../injection.dart';

part 'buy_coin_bloc.freezed.dart';

part 'buy_coin_event.dart';

part 'buy_coin_state.dart';

@injectable
class BuyCoinBloc extends Bloc<BuyCoinEvent, BuyCoinState> {
  BuyCoinBloc() : super(const BuyCoinState.initial());

  @override
  Stream<BuyCoinState> mapEventToState(BuyCoinEvent event) async* {
    yield* event.map(
      boughtCoin: _onCoinBought,
    );
  }

  Stream<BuyCoinState> _onCoinBought(_BoughtCoin event) async* {
    yield const BuyCoinState.actionInProgress();
    final _failureOrUnit = await getIt<BuyCoin>()(
      getIt<NoParams>(),
    );
    yield _failureOrUnit.fold(
      (failure) => BuyCoinState.purchaseFailure(failure),
      (_) => const BuyCoinState.purchaseSuccess(),
    );
  }
}
