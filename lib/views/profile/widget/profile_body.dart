import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/views/profile/widget/foreign_profile.dart';
import 'package:worldon/views/profile/widget/own_profile.dart';

class ProfileBody extends StatelessWidget {
  final Option<User> userOption;

  const ProfileBody({Key key, @required this.userOption}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return userOption.fold(
      () => const OwnProfile(),
      (user) => ForeignProfile(user: user),
    );
  }
}
