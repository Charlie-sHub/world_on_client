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
        // TODO: Figure out how to implement the user image
        // For some reason when building an image from a File the asset image can't be found
        /*
        child: user.imageFileOption.fold(
            () => const CircleAvatar(
            radius: 22,
            backgroundImage: AssetImage("assets/non_existing_person_placeholder.jpg"),
          ),
            (imageFile) => CircleAvatar(
            radius: 22,
            backgroundImage: FileImage(File("../world_on/assets/non_existing_person_placeholder.jpg")),
          ),
        ),
         */
        child: user.imageFileOption.fold(
          () => const CircleAvatar(
            radius: 22,
            backgroundImage: AssetImage("assets/non_existing_person_placeholder.jpg"),
          ),
          (imageFile) => const CircleAvatar(
            radius: 22,
            backgroundImage: AssetImage("assets/non_existing_person_placeholder.jpg"),
          ),
        ),
      ),
    );
  }
}
