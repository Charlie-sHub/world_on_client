import 'package:cached_network_image/cached_network_image.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/navigation/navigation_actor/navigation_actor_bloc.dart';
import 'package:worldon/domain/core/entities/user/simple_user.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

class UserImage extends StatelessWidget {
  const UserImage({
    Key? key,
    required this.user,
    required this.follows,
    required this.avatarRadius,
    required this.checkIconSize,
  }) : super(key: key);

  final SimpleUser user;
  final bool follows;
  final double avatarRadius;
  final double checkIconSize;

  @override
  Widget build(BuildContext context) => InkWell(
        onTap: () => context.read<NavigationActorBloc>().add(
              NavigationActorEvent.profileTapped(
                userIdOption: some(user.id),
                currentUserProfile: false,
              ),
            ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            ClipOval(
              child: ColoredBox(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(2),
                  child: CircleAvatar(
                    radius: avatarRadius,
                    backgroundImage: CachedNetworkImageProvider(user.imageURL),
                  ),
                ),
              ),
            ),
            if (follows)
              Container(
                decoration: BoxDecoration(
                  color: WorldOnColors.primary.withOpacity(0.25),
                  shape: BoxShape.circle,
                ),
                height: avatarRadius * 2,
                width: avatarRadius * 2,
                child: Icon(
                  Icons.check_rounded,
                  color: WorldOnColors.white,
                  size: avatarRadius,
                ),
              ),
            if (user.adminPowers)
              Positioned(
                top: 0,
                left: 0,
                child: ClipOval(
                  child: ColoredBox(
                    color: Colors.white,
                    child: Icon(
                      Icons.check_circle_rounded,
                      size: checkIconSize,
                      color: WorldOnColors.blue,
                    ),
                  ),
                ),
              ),
          ],
        ),
      );
}
