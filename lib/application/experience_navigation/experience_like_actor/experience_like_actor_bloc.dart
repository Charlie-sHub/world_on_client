import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
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
  ExperienceLikeActorBloc() : super(ExperienceLikeActorState.initial());

  @override
  Stream<ExperienceLikeActorState> mapEventToState(ExperienceLikeActorEvent event) async* {
    yield* event.map(
      initialized: _onInitialized,
      liked: _onLiked,
      disliked: _onDisliked,
    );
  }

  Stream<ExperienceLikeActorState> _onDisliked(_Disliked event) async* {
    yield state.copyWith(
      failureOrSuccessOption: none(),
    );
    final _failureOrUnit = await getIt<dislike_experience.DislikeExperience>()(
      dislike_experience.Params(experienceId: event.experienceId),
    );
    yield _failureOrUnit.fold(
      (failure) => state.copyWith(
        failureOrSuccessOption: some(
          left(failure),
        ),
      ),
      (_) => state.likes
          ? state.copyWith(
              likes: false,
              likesAmount: state.likesAmount - 1,
            )
          : state.copyWith(
              likesAmount: state.likesAmount,
            ),
    );
  }

  Stream<ExperienceLikeActorState> _onLiked(_Liked event) async* {
    yield state.copyWith(
      failureOrSuccessOption: none(),
    );
    final _failureOrUnit = await getIt<like_experience.LikeExperience>()(
      like_experience.Params(experienceId: event.experienceId),
    );
    yield _failureOrUnit.fold(
      (failure) => state.copyWith(
        failureOrSuccessOption: some(
          left(failure),
        ),
      ),
      (_) => state.likes
          ? state.copyWith(
              likesAmount: state.likesAmount,
            )
          : state.copyWith(
              likes: true,
              likesAmount: state.likesAmount + 1,
            ),
    );
  }

  Stream<ExperienceLikeActorState> _onInitialized(_Initialized event) async* {
    if (event.experiencesLikedIds.contains(event.experienceId)) {
      yield state.copyWith(
        likes: true,
        likesAmount: event.likesAmount,
      );
    } else {
      yield state.copyWith(
        likes: false,
        likesAmount: event.likesAmount,
      );
    }
  }
}
