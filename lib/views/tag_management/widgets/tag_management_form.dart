import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/tag_management/tag_management_form/tag_management_form_bloc.dart';
import 'package:worldon/views/tag_management/widgets/submit_tag_button.dart';
import 'package:worldon/views/tag_management/widgets/tag_name_field.dart';

class TagManagementForm extends StatelessWidget {
  final TextEditingController textController;

  const TagManagementForm({
    Key key,
    @required this.textController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: context.read<TagManagementFormBloc>().state.showErrorMessages ? AutovalidateMode.always : AutovalidateMode.disabled,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: TagNameField(
              textController: textController,
            ),
          ),
          const SubmitTagButton(),
        ],
      ),
    );
  }
}
