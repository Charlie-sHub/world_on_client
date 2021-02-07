import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/experience_navigation/experience_navigation_watcher/experience_navigation_watcher_bloc.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

class FinishButton extends StatelessWidget {
  const FinishButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: WorldOnColors.primary,
      onPressed: () => context.bloc<ExperienceNavigationWatcherBloc>().add(
            ExperienceNavigationWatcherEvent.initialized(none()),
          ),
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Text(
          S.of(context).experienceFinishButton,
          style: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: WorldOnColors.white,
          ),
        ),
      ),
    );
  }
}
