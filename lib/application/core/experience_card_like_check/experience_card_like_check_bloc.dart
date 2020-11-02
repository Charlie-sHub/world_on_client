import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:worldon/domain/authentication/use_case/get_logged_in_user.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/failures/error.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';

import '../../../injection.dart';

part 'experience_card_like_check_bloc.freezed.dart';
part 'experience_card_like_check_event.dart';
part 'experience_card_like_check_state.dart';

@injectable
class ExperienceCardLikeCheckBloc extends Bloc<ExperienceCardLikeCheckEvent, ExperienceCardLikeCheckState> {
  ExperienceCardLikeCheckBloc() : super(const ExperienceCardLikeCheckState.initial());

  @override
  Stream<ExperienceCardLikeCheckState> mapEventToState(ExperienceCardLikeCheckEvent event) async* {
    yield* event.map(
      initialized: _onInitialized,
    );
  }

  Stream<ExperienceCardLikeCheckState> _onInitialized(_Initialized event) async* {
    final _userOption = await getIt<GetLoggedInUser>()(getIt<NoParams>());
    final _user = _userOption.fold(
      () => throw UnAuthenticatedError(),
      id,
    );
    if (_user.experiencesLikedIds.contains(event.experience.id)) {
      yield const ExperienceCardLikeCheckState.likes();
    } else {
      yield const ExperienceCardLikeCheckState.neutral();
    }
  }
}
