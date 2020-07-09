import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';

part 'tag_card_actor_bloc.freezed.dart';

part 'tag_card_actor_event.dart';

part 'tag_card_actor_state.dart';

@injectable
class TagCardActorBloc extends Bloc<TagCardActorEvent, TagCardActorState> {
  TagCardActorBloc() : super(const TagCardActorState.initial());

  @override
  Stream<TagCardActorState> mapEventToState(TagCardActorEvent event) async* {
    // TODO: Add your event logic
  }
}
