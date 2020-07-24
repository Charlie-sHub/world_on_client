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
    return Padding(
      padding: const EdgeInsets.all(5),
      child: FlatButton(
        onPressed: () => context.bloc<NavigationActorBloc>().add(
              NavigationActorEvent.profileTapped(some(user)),
            ),
        child: const CircleAvatar(
          radius: 22,
          // TODO: Implement User image
          backgroundImage: AssetImage("assets/non_existing_person_placeholder.jpg"),
        ),
      ),
    );
  }
}
