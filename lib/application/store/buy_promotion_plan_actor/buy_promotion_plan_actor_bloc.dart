import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/authentication/use_case/get_logged_in_user.dart';
import 'package:worldon/domain/core/entities/promotion_plan/promotion_plan.dart';
import 'package:worldon/domain/core/failures/error.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/store/use_case/buy_promotion_plan.dart';

import '../../../injection.dart';

part 'buy_promotion_plan_actor_bloc.freezed.dart';
part 'buy_promotion_plan_actor_event.dart';
part 'buy_promotion_plan_actor_state.dart';

@injectable
class BuyPromotionPlanActorBloc extends Bloc<BuyPromotionPlanActorEvent, BuyPromotionPlanActorState> {
  BuyPromotionPlanActorBloc() : super(const BuyPromotionPlanActorState.initial());

  @override
  Stream<BuyPromotionPlanActorState> mapEventToState(BuyPromotionPlanActorEvent event) async* {
    yield* event.map(
      initialized: _onInitialized,
      boughtPromotionPlan: _onBoughtPromotionPlan,
    );
  }

  Stream<BuyPromotionPlanActorState> _onInitialized(_Initialized event) async* {
    yield const BuyPromotionPlanActorState.actionInProgress();
    final _userOption = await getIt<GetLoggedInUser>()(
      getIt<NoParams>(),
    );
    final _user = _userOption.fold(
      () => throw UnAuthenticatedError(),
      id,
    );
    if (_user.promotionPlan.isUsable) {
      yield BuyPromotionPlanActorState.currentPlan(_user.promotionPlan);
    } else {
      yield const BuyPromotionPlanActorState.noPromotionPlan();
    }
  }

  Stream<BuyPromotionPlanActorState> _onBoughtPromotionPlan(_BoughtPromotionPlan event) async* {
    yield const BuyPromotionPlanActorState.actionInProgress();
    final _failureOrUnit = await getIt<BuyPromotionPlan>()(
      Params(plan: event.promotionPlan),
    );
    yield _failureOrUnit.fold(
      (failure) {
        add(const BuyPromotionPlanActorEvent.initialized());
        return BuyPromotionPlanActorState.purchaseFailure(failure);
      },
      (_) {
        // Just to actually show the promotion plan stored in the server
        add(const BuyPromotionPlanActorEvent.initialized());
        return const BuyPromotionPlanActorState.purchaseSuccess();
      },
    );
  }
}
