import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/core/routes/router.gr.dart';

class EditProfileButton extends StatelessWidget {
  const EditProfileButton({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 28,
      child: ElevatedButton(
        onPressed: () async => context.router.push(
          ProfileEditingPageRoute(user: user),
        ),
        child: Text(
          S.of(context).editButton,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
