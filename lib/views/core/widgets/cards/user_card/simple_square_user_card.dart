import 'package:cached_network_image/cached_network_image.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/navigation/navigation_actor/navigation_actor_bloc.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/views/core/widgets/misc/world_on_progress_indicator.dart';

import 'name_username_display.dart';

class SimpleSquareUserCard extends StatelessWidget {
  const SimpleSquareUserCard({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;
  static const double _cardWidth = 120;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.read<NavigationActorBloc>().add(
            NavigationActorEvent.profileTapped(
              userOption: some(user),
              currentUserProfile: false,
            ),
          ),
      child: SizedBox(
        width: _cardWidth,
        child: Card(
          clipBehavior: Clip.antiAlias,
          child: Column(
            children: <Widget>[
              CachedNetworkImage(
                imageUrl: user.imageURL,
                height: _cardWidth,
                width: _cardWidth,
                fit: BoxFit.cover,
                progressIndicatorBuilder: (context, url, progress) => const Padding(
                  padding: EdgeInsets.all(15),
                  child: WorldOnProgressIndicator(),
                ),
              ),
              FittedBox(
                fit: BoxFit.fitWidth,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: NameUsernameDisplay(user: user),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
