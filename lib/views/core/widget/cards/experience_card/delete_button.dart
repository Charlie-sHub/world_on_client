import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/experience_management/experience_management_actor/experience_management_actor_bloc.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';

class DeleteButton extends StatelessWidget {
  const DeleteButton({
    Key key,
    @required this.experience,
  }) : super(key: key);

  final Experience experience;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.delete_forever),
      color: Colors.red,
      onPressed: () => context.bloc<ExperienceManagementActorBloc>().add(
            ExperienceManagementActorEvent.deleted(experience),
          ),
    );
  }
}
