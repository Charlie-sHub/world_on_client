import 'package:cached_network_image/cached_network_image.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/navigation/navigation_actor/navigation_actor_bloc.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

class UserImage extends StatelessWidget {
  const UserImage({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => context.read<NavigationActorBloc>().add(
            NavigationActorEvent.profileTapped(
              userOption: some(user),
              currentUserProfile: false,
            ),
          ),
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Padding(
            padding: const EdgeInsets.all(5),
            child: ClipOval(
              child: Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(2),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundImage: CachedNetworkImageProvider(user.imageURL),
                  ),
                ),
              ),
            ),
          ),
          if (user.adminPowers)
            ClipOval(
              child: Container(
                color: Colors.white,
                child: const Icon(
                  Icons.check_circle_rounded,
                  color: WorldOnColors.accent,
                  size: 20,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
