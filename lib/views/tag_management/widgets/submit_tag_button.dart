import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/tag_management/tag_management_form/tag_management_form_bloc.dart';

class SubmitTagButton extends StatelessWidget {
  const SubmitTagButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(
        Icons.add,
        size: 35,
      ),
      onPressed: () => context.read<TagManagementFormBloc>().add(
            const TagManagementFormEvent.submitted(),
          ),
    );
  }
}
