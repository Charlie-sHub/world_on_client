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
      autovalidate: context.bloc<TagManagementFormBloc>().state.showErrorMessages,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
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
