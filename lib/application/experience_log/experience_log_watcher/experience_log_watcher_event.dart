part of 'experience_log_watcher_bloc.dart';

@freezed
abstract class ExperienceLogWatcherEvent with _$ExperienceLogWatcherEvent {
  const factory ExperienceLogWatcherEvent.experiencesLoaded() = _ExperiencesLoaded;
}
