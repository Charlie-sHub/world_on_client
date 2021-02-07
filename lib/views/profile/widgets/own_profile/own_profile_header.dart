import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/profile/profile_watcher/profile_watcher_bloc.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';
import 'package:worldon/views/core/routes/router.gr.dart';
import 'package:worldon/views/core/widgets/misc/user_experience_info.dart';

class OwnProfileHeader extends StatelessWidget {
  const OwnProfileHeader({
    Key key,
    @required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: WorldOnColors.white,
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(5),
                child: Hero(
                  tag: "userImage",
                  child: CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage(user.imageURL),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      AutoSizeText(
                        user.name.getOrCrash(),
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: WorldOnColors.background,
                        ),
                      ),
                      AutoSizeText(
                        user.username.getOrCrash(),
                        style: const TextStyle(
                          fontSize: 18,
                          color: WorldOnColors.background,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Icon(
                      Icons.attach_money,
                      color: WorldOnColors.red,
                    ),
                    AutoSizeText(
                      user.coins.toString(),
                      style: const TextStyle(
                        fontSize: 18,
                        color: WorldOnColors.red,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: RaisedButton(
                  onPressed: () => context.navigator
                      .push(
                        Routes.profileEditingPage,
                        arguments: ProfileEditingPageArguments(user: user),
                      )
                      .then(
                        (_) => context.bloc<ProfileWatcherBloc>().add(
                              ProfileWatcherEvent.initializedForeignOrOwn(
                                none(),
                              ),
                            ),
                      ),
                  child: Text(S.of(context).profileEditingButton),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(5),
            child: AutoSizeText(
              user.description.getOrCrash(),
              textAlign: TextAlign.justify,
              style: const TextStyle(
                color: WorldOnColors.background,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: UserExperienceInfo(user: user),
          ),
        ],
      ),
    );
  }
}
