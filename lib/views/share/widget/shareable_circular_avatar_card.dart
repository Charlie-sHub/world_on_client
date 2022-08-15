import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/share/share_experience_internally/share_experience_internally_bloc.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

class ShareableCircularAvatarCard extends StatelessWidget {
  const ShareableCircularAvatarCard({
    Key? key,
    required this.user,
    required this.isSelected,
  }) : super(key: key);

  final User user;
  final bool isSelected;
  static const double _avatarRadius = 35;

  @override
  Widget build(BuildContext context) => InkWell(
        onTap: () => isSelected
            ? context.read<ShareExperienceInternallyBloc>().add(
                  ShareExperienceInternallyEvent.removedUser(user),
                )
            : context.read<ShareExperienceInternallyBloc>().add(
                  ShareExperienceInternallyEvent.addedUser(user),
                ),
        child: Column(
          children: <Widget>[
            Stack(
              alignment: Alignment.center,
              children: [
                Stack(
                  children: [
                    ClipOval(
                      child: ColoredBox(
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(2),
                          child: CircleAvatar(
                            radius: _avatarRadius,
                            backgroundImage:
                                CachedNetworkImageProvider(user.imageURL),
                          ),
                        ),
                      ),
                    ),
                    if (user.adminPowers)
                      const ClipOval(
                        child: ColoredBox(
                          color: Colors.white,
                          child: Icon(
                            Icons.check_circle_rounded,
                            size: 20,
                            color: WorldOnColors.blue,
                          ),
                        ),
                      ),
                  ],
                ),
                if (isSelected)
                  Container(
                    decoration: BoxDecoration(
                      color: WorldOnColors.blue.withOpacity(0.25),
                      shape: BoxShape.circle,
                    ),
                    height: _avatarRadius * 2,
                    width: _avatarRadius * 2,
                    child: const Center(
                      child: Icon(
                        Icons.near_me_rounded,
                        color: WorldOnColors.white,
                        size: 30,
                      ),
                    ),
                  ),
                if (user.adminPowers)
                  const Positioned(
                    top: 0,
                    left: 0,
                    child: ClipOval(
                      child: ColoredBox(
                        color: Colors.white,
                        child: Icon(
                          Icons.check_circle_rounded,
                          size: 20,
                          color: WorldOnColors.blue,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
            AutoSizeText(
              "@${user.username.getOrCrash()}",
              overflow: TextOverflow.visible,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 7,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      );
}
