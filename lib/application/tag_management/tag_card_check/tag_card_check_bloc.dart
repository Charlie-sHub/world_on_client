import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/domain/authentication/use_case/get_logged_in_user.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/domain/core/failures/error.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';

import '../../../injection.dart';

part 'tag_card_check_bloc.freezed.dart';
part 'tag_card_check_event.dart';
part 'tag_card_check_state.dart';

@Deprecated("The functionality of this bloc has been added back to the TagCardActorBloc")
@injectable
class TagCardCheckBloc extends Bloc<TagCardCheckEvent, TagCardCheckState> {
  TagCardCheckBloc() : super(const TagCardCheckState.initial());

  @override
  Stream<TagCardCheckState> mapEventToState(TagCardCheckEvent event) async* {
    yield* event.map(
      initialized: _onInitialized,
    );
  }

  Stream<TagCardCheckState> _onInitialized(_Initialized event) async* {
    final _getLoggedInUser = getIt<GetLoggedInUser>();
    final _userOption = await _getLoggedInUser(getIt<NoParams>());
    final _user = _userOption.fold(
      () => throw UnAuthenticatedError(),
      id,
    );
    if (_user.interests.contains(event.tag)) {
      yield const TagCardCheckState.inInterests();
    } else {
      yield const TagCardCheckState.notInInterests();
    }
  }
}
