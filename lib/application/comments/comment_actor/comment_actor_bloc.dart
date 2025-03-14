import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/comments/use_case/delete_comment.dart';
import 'package:worldon/domain/core/entities/comment/comment.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/injection.dart';

part 'comment_actor_bloc.freezed.dart';
part 'comment_actor_event.dart';
part 'comment_actor_state.dart';

@injectable
class CommentActorBloc extends Bloc<CommentActorEvent, CommentActorState> {
  CommentActorBloc() : super(const CommentActorState.initial());

  @override
  Stream<CommentActorState> mapEventToState(CommentActorEvent event) async* {
    yield* event.map(
      deleted: _onDeleted,
    );
  }

  Stream<CommentActorState> _onDeleted(_Deleted event) async* {
    yield const CommentActorState.actionInProgress();
    final _failureOrUnit = await getIt<DeleteComment>()(
      Params(
        comment: event.comment,
        userRequesting: event.currentUser,
      ),
    );
    yield _failureOrUnit.fold(
      (failure) => CommentActorState.deletionFailure(failure),
      (_) => const CommentActorState.deletionSuccess(),
    );
  }
}
