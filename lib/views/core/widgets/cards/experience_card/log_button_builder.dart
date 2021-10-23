import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/core/experience_add_to_log_actor/experience_add_to_log_actor_bloc.dart';
import 'package:worldon/application/core/watch_current_user/watch_current_user_bloc.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/core/widgets/cards/experience_card/add_to_log_button.dart';
import 'package:worldon/views/core/widgets/cards/experience_card/dismiss_from_log_button.dart';

import '../../../../../injection.dart';

class LogButtonBuilder extends StatelessWidget {
  const LogButtonBuilder({
    Key? key,
    required this.experience,
  }) : super(key: key);

  final Experience experience;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      width: 35,
      child: BlocProvider(
        create: (context) => getIt<ExperienceAddToLogActorBloc>()
          ..add(
            ExperienceAddToLogActorEvent.initialized(
              experience.id,
              context.read<WatchCurrentUserBloc>().state.maybeMap(
                    loadSuccess: (successState) => successState.user.experiencesToDoIds,
                    orElse: () => <UniqueId>{},
                  ),
              experience.toDoBy.length,
            ),
          ),
        child: BlocConsumer<ExperienceAddToLogActorBloc, ExperienceAddToLogActorState>(
          listenWhen: _listenWhen,
          listener: _experienceCardListener,
          builder: (context, state) => AnimatedSwitcher(
            duration: const Duration(milliseconds: 200),
            transitionBuilder: (child, animation) => FadeTransition(
              opacity: animation,
              child: child,
            ),
            child: state.inLog
                ? DismissFromLogButton(experienceId: experience.id)
                : AddToLogButton(experienceId: experience.id),
          ),
        ),
      ),
    );
  }

  bool _listenWhen(_, ExperienceAddToLogActorState current) => current.failureOrSuccessOption.fold(
        () => false,
        (_failureOrUnit) => _failureOrUnit.fold(
          (_) => true,
          (_) => false,
        ),
      );

  void _experienceCardListener(BuildContext context, ExperienceAddToLogActorState state) =>
      state.failureOrSuccessOption.fold(
        () {},
        (a) => a.fold(
          (failure) => FlushbarHelper.createError(
            duration: const Duration(seconds: 2),
            message: failure.maybeMap(
              coreData: (failure) => failure.coreDataFailure.maybeMap(
                serverError: (failure) => failure.errorString,
                orElse: () => S.of(context).unknownError,
              ),
              orElse: () => S.of(context).unknownError,
            ),
          ).show(context),
          (_) {},
        ),
      );
}
