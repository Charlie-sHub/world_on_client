import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';
import 'package:worldon/domain/experience_navigation/use_case/dislike_experience.dart'
    as dislike_experience;
import 'package:worldon/domain/experience_navigation/use_case/like_experience.dart'
    as like_experience;

import '../../../injection.dart';

part 'experience_like_actor_bloc.freezed.dart';
part 'experience_like_actor_event.dart';
part 'experience_like_actor_state.dart';

@injectable
class ExperienceLikeActorBloc extends Bloc<ExperienceLikeActorEvent, ExperienceLikeActorState> {
  ExperienceLikeActorBloc() : super(const ExperienceLikeActorState.initial());

  @override
  Stream<ExperienceLikeActorState> mapEventToState(ExperienceLikeActorEvent event) async* {
    yield* event.map(
      initialized: _onInitialized,
      liked: _onLiked,
      disliked: _onDisliked,
    );
  }

  Stream<ExperienceLikeActorState> _onDisliked(_Disliked event) async* {
    yield const ExperienceLikeActorState.actionInProgress();
    final _failureOrUnit = await getIt<dislike_experience.DislikeExperience>()(
      dislike_experience.Params(experienceId: event.experienceId),
    );
    yield _failureOrUnit.fold(
      (failure) => ExperienceLikeActorState.dislikeFailure(failure),
      (_) => const ExperienceLikeActorState.dislikeSuccess(),
    );
  }

  Stream<ExperienceLikeActorState> _onLiked(_Liked event) async* {
    yield const ExperienceLikeActorState.actionInProgress();
    final _failureOrUnit = await getIt<like_experience.LikeExperience>()(
      like_experience.Params(experienceId: event.experienceId),
    );
    yield _failureOrUnit.fold(
      (failure) => ExperienceLikeActorState.likeFailure(failure),
      (_) => const ExperienceLikeActorState.likeSuccess(),
    );
  }

  Stream<ExperienceLikeActorState> _onInitialized(_Initialized event) async* {
    if (event.experiencesLikedIds.contains(event.experienceId)) {
      yield const ExperienceLikeActorState.likes();
    } else {
      yield const ExperienceLikeActorState.neutral();
    }
  }
}
