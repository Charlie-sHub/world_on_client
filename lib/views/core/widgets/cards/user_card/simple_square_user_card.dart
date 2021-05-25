import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/navigation/navigation_actor/navigation_actor_bloc.dart';
import 'package:worldon/application/profile/follow_actor/follow_actor_bloc.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';
import 'package:worldon/views/core/widgets/misc/world_on_plasma.dart';

import '../../../../../injection.dart';

class SimpleSquareUserCard extends StatelessWidget {
  const SimpleSquareUserCard({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;
  static const double _multiplier = 0.18;

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
        width: MediaQuery.of(context).size.height * _multiplier,
        child: Card(
          clipBehavior: Clip.antiAlias,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                            height: MediaQuery.of(context).size.height * _multiplier,
                            width: MediaQuery.of(context).size.height * _multiplier,
                            fit: BoxFit.cover,
                            progressIndicatorBuilder: (context, url, progress) => WorldOnPlasma(),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: WorldOnColors.primary.withOpacity(0.25),
                            ),
                            height: MediaQuery.of(context).size.height * _multiplier,
                            width: MediaQuery.of(context).size.height * _multiplier,
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
                      height: MediaQuery.of(context).size.height * _multiplier,
                      width: MediaQuery.of(context).size.height * _multiplier,
                      fit: BoxFit.cover,
                      progressIndicatorBuilder: (context, url, progress) => WorldOnPlasma(),
                    ),
                  ),
                ),
              ),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 5,
                    vertical: 5,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      FittedBox(
                        child: AutoSizeText(
                          user.name.getOrCrash(),
                          overflow: TextOverflow.visible,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 10,
                          ),
                        ),
                      ),
                      FittedBox(
                        child: AutoSizeText(
                          "@${user.username.getOrCrash()}",
                          overflow: TextOverflow.fade,
                          minFontSize: 6,
                          maxFontSize: 11,
                          style: const TextStyle(
                            fontSize: 10,
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
