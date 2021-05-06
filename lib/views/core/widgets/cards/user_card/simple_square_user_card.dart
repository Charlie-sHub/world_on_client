import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/navigation/navigation_actor/navigation_actor_bloc.dart';
import 'package:worldon/application/profile/follow_actor/follow_actor_bloc.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';
import 'package:worldon/views/core/widgets/misc/world_on_progress_indicator.dart';

import '../../../../../injection.dart';

class SimpleSquareUserCard extends StatelessWidget {
  const SimpleSquareUserCard({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;
  static const double _cardSize = 120;

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
        width: _cardSize,
        child: Card(
          clipBehavior: Clip.antiAlias,
          child: Column(
            children: <Widget>[
              BlocProvider(
                create: (context) => getIt<FollowActorBloc>()
                  ..add(
                    FollowActorEvent.initialized(user),
                  ),
                child: BlocBuilder<FollowActorBloc, FollowActorState>(
                  builder: (context, state) => state.maybeMap(
                    initial: (_) => Container(),
                    actionInProgress: (_) => const CircularProgressIndicator(),
                    follows: (_) {
                      return Stack(
                        alignment: Alignment.center,
                        children: [
                          CachedNetworkImage(
                            imageUrl: user.imageURL,
                            height: _cardSize,
                            width: _cardSize,
                            fit: BoxFit.cover,
                            progressIndicatorBuilder: (context, url, progress) => const Padding(
                              padding: EdgeInsets.all(15),
                              child: WorldOnProgressIndicator(),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: WorldOnColors.primary.withOpacity(0.25),
                            ),
                            height: _cardSize,
                            width: _cardSize,
                            child: const Center(
                              child: Icon(
                                Icons.check_rounded,
                                color: WorldOnColors.white,
                                size: 30,
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                    orElse: () => CachedNetworkImage(
                      imageUrl: user.imageURL,
                      height: _cardSize,
                      width: _cardSize,
                      fit: BoxFit.cover,
                      progressIndicatorBuilder: (context, url, progress) => const Padding(
                        padding: EdgeInsets.all(15),
                        child: WorldOnProgressIndicator(),
                      ),
                    ),
                  ),
                ),
              ),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 2),
                  child: Column(
                    children: <Widget>[
                      FittedBox(
                        child: AutoSizeText(
                          user.name.getOrCrash(),
                          overflow: TextOverflow.visible,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 10,
                          ),
                        ),
                      ),
                      FittedBox(
                        child: AutoSizeText(
                          "@${user.username.getOrCrash()}",
                          overflow: TextOverflow.visible,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 7,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
