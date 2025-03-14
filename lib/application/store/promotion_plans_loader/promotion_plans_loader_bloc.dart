import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/promotion_plan/promotion_plan.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/store/use_case/load_promotion_plans.dart';
import 'package:worldon/injection.dart';

part 'promotion_plans_loader_bloc.freezed.dart';
part 'promotion_plans_loader_event.dart';
part 'promotion_plans_loader_state.dart';

@injectable
class PromotionPlansLoaderBloc extends Bloc<PromotionPlansLoaderEvent, PromotionPlansLoaderState> {
  PromotionPlansLoaderBloc() : super(const PromotionPlansLoaderState.initial());

  @override
  Stream<PromotionPlansLoaderState> mapEventToState(PromotionPlansLoaderEvent event) async* {
    yield* event.map(
      loadPromotionPlans: _onLoadPromotionPlans,
    );
  }

  Stream<PromotionPlansLoaderState> _onLoadPromotionPlans(_LoadPromotionPlans event) async* {
    yield const PromotionPlansLoaderState.loadInProgress();
    final _failureOrPromotionPlans = await getIt<LoadPromotionPlans>()(
      getIt<NoParams>(),
    );
    yield _failureOrPromotionPlans.fold(
      (_failure) => PromotionPlansLoaderState.loadFailure(_failure),
      (_promotionPlans) => PromotionPlansLoaderState.loadedPromotionPlans(_promotionPlans),
    );
  }
}
