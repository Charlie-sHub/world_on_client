import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/notification/notification.dart';
import 'package:worldon/domain/notifications/use_case/check_notification.dart' as check_notification;
import 'package:worldon/domain/notifications/use_case/delete_notification.dart' as delete_notification;

import '../../../injection.dart';

part 'notification_actor_bloc.freezed.dart';
part 'notification_actor_event.dart';
part 'notification_actor_state.dart';

@injectable
class NotificationActorBloc extends Bloc<NotificationActorEvent, NotificationActorState> {
  NotificationActorBloc() : super(const NotificationActorState.initial());

  @override
  Stream<NotificationActorState> mapEventToState(NotificationActorEvent event) async* {
    yield* event.map(
      deleted: _onDeleted,
      checked: _onChecked,
    );
  }

  Stream<NotificationActorState> _onChecked(_Checked event) async* {
    final _failureOrUnit = await getIt<check_notification.CheckNotification>()(
      check_notification.Params(id: event.notification.id),
    );
    yield _failureOrUnit.fold(
      (failure) => state,
      (_) => const NotificationActorState.checkSuccess(),
    );
  }

  Stream<NotificationActorState> _onDeleted(_Deleted event) async* {
    yield const NotificationActorState.actionInProgress();
    final _failureOrUnit = await getIt<delete_notification.DeleteNotification>()(
      delete_notification.Params(id: event.notification.id),
    );
    yield _failureOrUnit.fold(
      (failure) => NotificationActorState.deletionFailure(failure),
      (_) => const NotificationActorState.deletionSuccess(),
    );
  }
}
