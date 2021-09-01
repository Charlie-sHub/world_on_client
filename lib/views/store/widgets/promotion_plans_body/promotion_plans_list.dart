import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/store/promotion_plans_loader/promotion_plans_loader_bloc.dart';
import 'package:worldon/domain/core/entities/promotion_plan/promotion_plan_code.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/injection.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';
import 'package:worldon/views/core/widgets/cards/error_card.dart';
import 'package:worldon/views/core/widgets/error/error_display.dart';
import 'package:worldon/views/core/widgets/misc/world_on_progress_indicator.dart';
import 'package:worldon/views/store/widgets/promotion_plans_body/promotion_plan_tile.dart';

class PromotionPlansList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<PromotionPlansLoaderBloc>()
        ..add(
          const PromotionPlansLoaderEvent.loadPromotionPlans(),
        ),
      child: BlocBuilder<PromotionPlansLoaderBloc, PromotionPlansLoaderState>(
        builder: (context, _loaderState) => _loaderState.map(
          initial: (_) => Container(),
          loadInProgress: (_) => const WorldOnProgressIndicator(
            size: 60,
          ),
          loadedPromotionPlans: (state) => ListView.separated(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.all(5),
            itemCount: state.plans.size,
            separatorBuilder: (context, index) => const Divider(
              color: WorldOnColors.accent,
              height: 5,
            ),
            itemBuilder: (context, index) {
              final _promo = state.plans.get(index);
              if (_promo.code != PromotionPlanCode.none) {
                if (_promo.isValid) {
                  return PromotionPlanTile(plan: _promo);
                } else {
                  return ErrorCard(
                    entityType: S.of(context).promotionPlans,
                    valueFailureString: _promo.failureOption.fold(
                      () => S.of(context).noError,
                      (failure) => failure.toString(),
                    ),
                  );
                }
              } else {
                return Container();
              }
            },
          ),
          loadFailure: (state) => ErrorDisplay(
            retryFunction: () => context.read<PromotionPlansLoaderBloc>().add(
                  const PromotionPlansLoaderEvent.loadPromotionPlans(),
                ),
            failure: state.failure,
            specificMessage: some(S.of(context).notFoundErrorPromotionPlans),
          ),
        ),
      ),
    );
  }
}
