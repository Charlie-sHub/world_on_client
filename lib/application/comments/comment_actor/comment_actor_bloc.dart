import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
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
  CommentActorBloc() : super(const CommentActorState.initial()) {
    on<_Deleted>(_onDeleted);
  }

  FutureOr<void> _onDeleted(_Deleted event, Emitter emit) async {
    emit(const CommentActorState.actionInProgress());
    final failureOrUnit = await getIt<DeleteComment>()(
      Params(
        comment: event.comment,
        userRequesting: event.currentUser,
      ),
    );
    emit(
      failureOrUnit.fold(
        (failure) => CommentActorState.deletionFailure(failure),
        (_) => const CommentActorState.deletionSuccess(),
      ),
    );
  }
}
