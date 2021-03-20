import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:worldon/application/profile/block_actor/block_actor_bloc.dart';
import 'package:worldon/domain/core/entities/user/user.dart';

class UnBlockButton extends StatelessWidget {
  const UnBlockButton({
    Key key,
    @required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const FaIcon(
        FontAwesomeIcons.user,
        color: Colors.green,
      ),
      onPressed: () => context.read<BlockActorBloc>().add(
            BlockActorEvent.unBlocked(user),
          ),
    );
  }
}
