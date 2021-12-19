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
import 'package:worldon/injection.dart';

part 'experience_like_actor_bloc.freezed.dart';
part 'experience_like_actor_event.dart';
part 'experience_like_actor_state.dart';

@injectable
class ExperienceLikeActorBloc
    extends Bloc<ExperienceLikeActorEvent, ExperienceLikeActorState> {
  ExperienceLikeActorBloc() : super(ExperienceLikeActorState.initial()) {
    on<_Initialized>(_onInitialized);
    on<_Liked>(_onLiked);
    on<_Disliked>(_onDisliked);
  }

  FutureOr<void> _onDisliked(_Disliked event, Emitter emit) async {
    emit(
      state.copyWith(
        failureOrSuccessOption: none(),
      ),
    );
    final _failureOrUnit = await getIt<dislike_experience.DislikeExperience>()(
      dislike_experience.Params(experienceId: event.experienceId),
    );
    emit(
      _failureOrUnit.fold(
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
      ),
    );
  }

  FutureOr<void> _onLiked(_Liked event, Emitter emit) async {
    emit(
      state.copyWith(
        failureOrSuccessOption: none(),
      ),
    );
    final _failureOrUnit = await getIt<like_experience.LikeExperience>()(
      like_experience.Params(experienceId: event.experienceId),
    );
    emit(
      _failureOrUnit.fold(
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
      ),
    );
  }

  void _onInitialized(_Initialized event, Emitter emit) {
    if (event.experiencesLikedIds.contains(event.experienceId)) {
      emit(
        state.copyWith(
          likes: true,
          likesAmount: event.likesAmount,
        ),
      );
    } else {
      emit(
        state.copyWith(
          likes: false,
          likesAmount: event.likesAmount,
        ),
      );
    }
  }
}
