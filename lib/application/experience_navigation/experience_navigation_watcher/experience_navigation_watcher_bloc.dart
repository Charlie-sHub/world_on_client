import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/experience_management/use_case/get_experience.dart';
import 'package:worldon/injection.dart';

part 'experience_navigation_watcher_bloc.freezed.dart';
part 'experience_navigation_watcher_event.dart';
part 'experience_navigation_watcher_state.dart';

@injectable
class ExperienceNavigationWatcherBloc extends Bloc<
    ExperienceNavigationWatcherEvent, ExperienceNavigationWatcherState> {
  ExperienceNavigationWatcherBloc()
      : super(const ExperienceNavigationWatcherState.initial()) {
    on<_Initialized>(_onInitialized);
    on<_AllObjectivesAccomplished>(_onAllObjectivesAccomplished);
  }

  void _onAllObjectivesAccomplished(
    _AllObjectivesAccomplished event,
    Emitter emit,
  ) =>
      emit(
        ExperienceNavigationWatcherState.finishExperience(
          event.experience,
        ),
      );

  FutureOr<void> _onInitialized(_Initialized event, Emitter emit) async =>
      await event.experienceOption.fold(
        () async {
          emit(const ExperienceNavigationWatcherState.noExperience());
        },
        (experience) async {
          final failureOrUnit = await getIt<GetExperience>()(
            Params(id: experience.id),
          );
          emit(
            failureOrUnit.fold(
              (_) => const ExperienceNavigationWatcherState.noExperience(),
              (experience) =>
                  ExperienceNavigationWatcherState.navigatingExperience(
                experience,
              ),
            ),
          );
        },
      );
}
