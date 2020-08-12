import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/navigation/navigation_actor/navigation_actor_bloc.dart';
import 'package:worldon/domain/core/entities/user/user.dart';

class UserImage extends StatelessWidget {
  const UserImage({
    Key key,
    @required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () => context.bloc<NavigationActorBloc>().add(
            NavigationActorEvent.profileTapped(some(user)),
          ),
      // TODO: Change to NetworkImage
      child: const CircleAvatar(
        radius: 22,
        backgroundImage: AssetImage("assets/non_existing_person_placeholder.jpg"),
      ),
    );
  }
}
