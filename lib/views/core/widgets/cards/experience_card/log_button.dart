import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:worldon/application/core/experience_add_to_log_actor/experience_add_to_log_actor_bloc.dart';
import 'package:worldon/application/core/watch_current_user/watch_current_user_bloc.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';
import 'package:worldon/views/core/widgets/cards/experience_card/add_to_log_button.dart';
import 'package:worldon/views/core/widgets/cards/experience_card/dismiss_from_log_button.dart';
import 'package:worldon/views/core/widgets/misc/world_on_progress_indicator.dart';

import '../../../../../injection.dart';

class LogButton extends StatelessWidget {
  const LogButton({
    Key? key,
    required this.experience,
  }) : super(key: key);

  final Experience experience;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      width: 35,
      child: BlocBuilder<WatchCurrentUserBloc, WatchCurrentUserState>(
        buildWhen: (previous, current) => current.map(
          initial: (_) => true,
          loadSuccess: (_) {
            final _previousToDos = previous.maybeMap(
              loadSuccess: (successState) => successState.user.experiencesToDoIds,
              orElse: () => <UniqueId>{},
            );
            final _currentToDos = current.maybeMap(
              loadSuccess: (successState) => successState.user.experiencesToDoIds,
              orElse: () => <UniqueId>{},
            );
            return _previousToDos != _currentToDos;
          },
          loadFailure: (_) => true,
        ),
        builder: (context, state) => state.map(
          initial: (_) => const WorldOnProgressIndicator(size: 25),
          loadSuccess: (_successState) => BlocProvider(
            create: (context) => getIt<ExperienceAddToLogActorBloc>()
              ..add(
                ExperienceAddToLogActorEvent.initialized(
                  experience,
                  _successState.user.experiencesToDoIds,
                ),
              ),
            child: BlocConsumer<ExperienceAddToLogActorBloc, ExperienceAddToLogActorState>(
              listener: _experienceCardListener,
              builder: (context, state) => AnimatedSwitcher(
                duration: const Duration(milliseconds: 200),
                transitionBuilder: (child, animation) => FadeTransition(
                  opacity: animation,
                  child: child,
                ),
                child: state.map(
                  initial: (_) => Container(),
                  actionInProgress: (_) => const CircularProgressIndicator(),
                  inLog: (_) => DismissFromLogButton(experience: experience),
                  notInLog: (_) => AddToLogButton(experience: experience),
                  additionSuccess: (_) => DismissFromLogButton(experience: experience),
                  additionFailure: (_) => AddToLogButton(experience: experience),
                  dismissalSuccess: (_) => AddToLogButton(experience: experience),
                  dismissalFailure: (_) => DismissFromLogButton(experience: experience),
                ),
              ),
            ),
          ),
          loadFailure: (value) => const Icon(
            MdiIcons.bookmarkOffOutline,
            color: WorldOnColors.red,
            size: 25,
          ),
        ),
      ),
    );
  }

  void _experienceCardListener(BuildContext context, ExperienceAddToLogActorState state) =>
      state.maybeMap(
        additionFailure: (state) => FlushbarHelper.createError(
          duration: const Duration(seconds: 2),
          message: state.failure.maybeMap(
              coreData: (failure) => failure.coreDataFailure.maybeMap(
                    serverError: (failure) => failure.errorString,
                    orElse: () => S.of(context).unknownError,
                  ),
              orElse: () => S.of(context).unknownError),
        ).show(context),
        dismissalFailure: (state) => FlushbarHelper.createError(
          duration: const Duration(seconds: 2),
          message: state.failure.maybeMap(
              coreData: (failure) => failure.coreDataFailure.maybeMap(
                    serverError: (failure) => failure.errorString,
                    orElse: () => S.of(context).unknownError,
                  ),
              orElse: () => S.of(context).unknownError),
        ).show(context),
        orElse: () {},
      );
}
