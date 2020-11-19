import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';
import 'package:worldon/views/core/routes/router.gr.dart';
import 'package:worldon/views/core/widget/misc/user_experience_info.dart';

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
                // TODO: Change to use network images
                child: user.imageURL.contains("assets/")
                    ? Hero(
                        tag: "userImageAsset",
                        child: CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage(user.imageURL),
                        ),
                      )
                    : Hero(
                        tag: "userImageFile",
                        child: CircleAvatar(
                          radius: 40,
                          backgroundImage: FileImage(File(user.imageURL)),
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
              Padding(
                padding: const EdgeInsets.all(5),
                child: RaisedButton(
                  onPressed: () => context.navigator.push(
                    Routes.profileEditingPage,
                    arguments: ProfileEditingPageArguments(user: user),
                  ),
                  child: const Text("Edit"),
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
          UserExperienceInfo(user: user),
        ],
      ),
    );
  }
}
