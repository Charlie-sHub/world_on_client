import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/navigation/navigation_actor/navigation_actor_bloc.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

class ParticipateButton extends StatelessWidget {
  const ParticipateButton({
    Key key,
    @required this.experience,
  }) : super(key: key);

  final Experience experience;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: WorldOnColors.primary,
      onPressed: () => context.bloc<NavigationActorBloc>().add(
            NavigationActorEvent.experienceNavigationTapped(some(experience)),
          ),
      child: Text(
        S.of(context).participate,
        style: const TextStyle(
          color: WorldOnColors.white,
        ),
      ),
    );
  }
}
