import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/user/user.dart';

part 'profile_watcher_bloc.freezed.dart';

part 'profile_watcher_event.dart';

part 'profile_watcher_state.dart';

@injectable
class ProfileWatcherBloc extends Bloc<ProfileWatcherEvent, ProfileWatcherState> {
  ProfileWatcherBloc() : super(const ProfileWatcherState.initial());

  @override
  Stream<ProfileWatcherState> mapEventToState(ProfileWatcherEvent event) async* {
    // TODO: Add your event logic
  }
}
