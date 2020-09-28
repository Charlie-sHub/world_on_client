import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/authentication/use_case/get_logged_in_user.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/failures/error.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/experience_navigation/use_case/dislike_experience.dart' as dislike_experience;
import 'package:worldon/domain/experience_navigation/use_case/like_experience.dart' as like_experience;

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
      dislike_experience.Params(experienceId: event.experience.id),
    );
    yield _failureOrUnit.fold(
      (failure) => ExperienceLikeActorState.dislikeFailure(failure),
      (_) => const ExperienceLikeActorState.dislikeSuccess(),
    );
  }

  Stream<ExperienceLikeActorState> _onLiked(_Liked event) async* {
    yield const ExperienceLikeActorState.actionInProgress();
    final _failureOrUnit = await getIt<like_experience.LikeExperience>()(
      like_experience.Params(experienceId: event.experience.id),
    );
    yield _failureOrUnit.fold(
      (failure) => ExperienceLikeActorState.likeFailure(failure),
      (_) => const ExperienceLikeActorState.likeSuccess(),
    );
  }

  Stream<ExperienceLikeActorState> _onInitialized(_Initialized event) async* {
    final _userOption = await getIt<GetLoggedInUser>()(getIt<NoParams>());
    final _user = _userOption.fold(
      () => throw UnAuthenticatedError(),
      id,
    );
    if (_user.experiencesLikedIds.contains(event.experience.id)) {
      yield const ExperienceLikeActorState.likes();
    } else {
      yield const ExperienceLikeActorState.neutral();
    }
  }
}
