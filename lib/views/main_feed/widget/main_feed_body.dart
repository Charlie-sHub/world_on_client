import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/core/experience_card_actor/experience_card_actor_bloc.dart';
import 'package:worldon/application/main_feed/main_feed_watcher/main_feed_watcher_bloc.dart';
import 'package:worldon/views/core/widget/critical_error_display.dart';
import 'package:worldon/views/core/widget/experience_card.dart';
import 'package:worldon/views/core/widget/experience_error_card.dart';
import 'package:worldon/views/core/widget/world_on_progress_indicator.dart';

import '../../../injection.dart';

class MainFeedBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<MainFeedWatcherBloc>(
          create: (context) => getIt<MainFeedWatcherBloc>()
            ..add(
              const MainFeedWatcherEvent.watchMainFeedStarted(),
            ),
        ),
        BlocProvider<ExperienceCardActorBloc>(
          create: (context) => getIt<ExperienceCardActorBloc>(),
        ),
      ],
      child: BlocListener<ExperienceCardActorBloc, ExperienceCardActorState>(
        listener: (context, state) => state.map(
          initial: (_) => null,
          actionInProgress: (_) => FlushbarHelper.createLoading(
            message: "Action in progress",
            linearProgressIndicator: const LinearProgressIndicator(),
          ).show(context),
          additionSuccess: (_) => FlushbarHelper.createSuccess(
            message: "Success",
          ).show(context),
          additionFailure: (state) => FlushbarHelper.createError(
            message: state.failure.maybeMap(
              coreData: (failure) => failure.coreDataFailure.maybeMap(
                serverError: (failure) => failure.errorString,
                notFoundError: (failure) => "Nothing was found",
                cacheError: (failure) => "Unknown Cache Error",
                orElse: () => "Unknown Error",
              ),
              orElse: () => "Unknown Error",
            ),
          ).show(context),
        ),
        child: BlocBuilder<MainFeedWatcherBloc, MainFeedWatcherState>(
          builder: (context, state) =>
            state.map(
              initial: (_) => Container(),
              loadInProgress: (_) => WorldOnProgressIndicator(),
              loadSuccess: (state) =>
                ListView.builder(
                  padding: const EdgeInsets.all(10),
                  itemCount: state.experiences.size,
                  itemBuilder: (context, index) {
                    final _experience = state.experiences[index];
                    if (_experience.isValid) {
                      return ExperienceCard(experience: _experience);
                    } else {
                      return ExperienceErrorCard(experience: _experience);
                    }
                  },
                ),
              loadFailure: (state) => CriticalErrorDisplay(failure: state.failure),
            ),
        ),
      ),
    );
  }
}
