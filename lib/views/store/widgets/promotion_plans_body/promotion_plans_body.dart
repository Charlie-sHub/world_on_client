import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/store/buy_promotion_plan_actor/buy_promotion_plan_actor_bloc.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/injection.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';
import 'package:worldon/views/store/widgets/promotion_plans_body/current_promotion_plan_view.dart';
import 'package:worldon/views/store/widgets/promotion_plans_body/promotion_plans_list.dart';

class PromotionPlansBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: buildWhen currentPlan is the state
    // The idea is to show the currently owned plan on the bottom of the view
    // Purchase success and failure will be handled by the listener
    return BlocProvider(
      create: (context) => getIt<BuyPromotionPlanActorBloc>()
        ..add(
          const BuyPromotionPlanActorEvent.initialized(),
        ),
      child: BlocConsumer<BuyPromotionPlanActorBloc, BuyPromotionPlanActorState>(
        listenWhen: (previous, current) => current.maybeMap(
          purchaseFailure: (_) => true,
          orElse: () => false,
        ),
        listener: _promotionPlanStoreListener,
        buildWhen: (previous, current) => current.maybeMap(
          currentPlan: (_) => true,
          noPromotionPlan: (_) => true,
          orElse: () => false,
        ),
        builder: (context, _actorState) => Column(
          children: [
            Flexible(
              flex: 4,
              child: PromotionPlansList(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Text(
                S.of(context).currentPlan,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(
              child: _actorState.maybeMap(
                currentPlan: (state) => CurrentPromotionPlanView(
                  plan: state.promotionPlan,
                ),
                noPromotionPlan: (_) => Center(
                  child: Text(
                    S.of(context).noActivePlan,
                    style: const TextStyle(
                      color: WorldOnColors.red,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                orElse: () => Container(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _promotionPlanStoreListener(
    BuildContext context,
    BuyPromotionPlanActorState state,
  ) =>
      state.maybeMap(
        purchaseFailure: (state) => FlushbarHelper.createError(
          duration: const Duration(seconds: 2),
          message: state.failure.maybeMap(
            coreData: (failure) => failure.coreDataFailure.maybeMap(
              serverError: (failure) => failure.errorString,
              orElse: () => S.of(context).unknownError,
            ),
            storeData: (failure) => failure.storeDataFailure.maybeMap(
              cancelled: (_) => S.of(context).cancelledByUser,
              unAvailableStore: (_) => S.of(context).unAvailableStore,
              orElse: () => S.of(context).unknownError,
            ),
            orElse: () => S.of(context).unknownError,
          ),
        ).show(context),
        // TODO: Maybe some feedback would be required for actionInProgress and purchaseSuccess
        orElse: () {},
      );
}
