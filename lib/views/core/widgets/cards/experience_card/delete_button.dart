import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/experience_management/experience_management_actor/experience_management_actor_bloc.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

class DeleteButton extends StatelessWidget {
  const DeleteButton({
    Key key,
    @required this.experience,
  }) : super(key: key);

  final Experience experience;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      padding: const EdgeInsets.all(2),
      onPressed: () => context.read<ExperienceManagementActorBloc>().add(
            ExperienceManagementActorEvent.deleted(experience),
          ),
      child: Row(
        children: [
          const Icon(
            Icons.delete_forever,
            color: Colors.red,
          ),
          const SizedBox(width: 5),
          Text(
            S.of(context).delete,
            style: const TextStyle(
              color: WorldOnColors.background,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
