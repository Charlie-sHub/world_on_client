import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/navigation/navigation_actor/navigation_actor_bloc.dart';

class CurrentUserProfileButton extends StatelessWidget {
  const CurrentUserProfileButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(
        Icons.person_outline,
        size: 30,
      ),
      onPressed: () {
        context.bloc<NavigationActorBloc>().add(
              NavigationActorEvent.profileTapped(
                userOption: none(),
                currentUserProfile: true,
              ),
            );
      },
    );
  }
}
