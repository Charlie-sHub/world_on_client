import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/tag_management/tag_management_form/tag_management_form_bloc.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

class SubmitTagButton extends StatelessWidget {
  const SubmitTagButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () => context.bloc<TagManagementFormBloc>().add(
            const TagManagementFormEvent.submitted(),
          ),
      color: WorldOnColors.primary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0),
        side: const BorderSide(color: WorldOnColors.primary),
      ),
      child: const Text(
        "Submit",
        style: TextStyle(
          color: WorldOnColors.background,
          fontSize: 20,
        ),
      ),
    );
  }
}
