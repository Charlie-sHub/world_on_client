import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:worldon/application/comments/comment_form/comment_form_bloc.dart';
import 'package:worldon/domain/core/validation/objects/comment_content.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';
import 'package:worldon/injection.dart';
import 'package:worldon/views/core/misc/string_constants.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

class CommentForm extends HookWidget {
  final UniqueId experienceId;

  const CommentForm({
    Key key,
    @required this.experienceId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _textEditingController = useTextEditingController();
    return BlocProvider(
      create: (context) => getIt<CommentFormBloc>()
        ..add(
          CommentFormEvent.initialized(
            commentOption: none(),
            experienceId: experienceId,
          ),
        ),
      child: BlocConsumer<CommentFormBloc, CommentFormState>(
        listener: (context, state) => null,
        builder: (context, state) => Form(
          autovalidateMode: context.bloc<CommentFormBloc>().state.showErrorMessages ? AutovalidateMode.always : AutovalidateMode.disabled,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(3),
                child: TextFormField(
                  minLines: 2,
                  maxLines: 5,
                  controller: _textEditingController,
                  maxLength: CommentContent.maxLength,
                  onChanged: (value) => context.bloc<CommentFormBloc>().add(
                        CommentFormEvent.contentChanged(value.trim()),
                      ),
                  validator: (_) => context.bloc<CommentFormBloc>().state.comment.content.value.fold(
                        (failure) => failure.maybeMap(
                          emptyString: (_) => "The comment can't be empty",
                          stringExceedsLength: (_) => "The comment is too long",
                          stringWithInvalidCharacters: (_) => "The comment has invalid characters",
                          orElse: () => StringConst.unknownError,
                        ),
                        (_) => null,
                      ),
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      icon: const Icon(
                        Icons.send_rounded,
                        size: 35,
                      ),
                      onPressed: () {
                        context.bloc<CommentFormBloc>().add(
                              const CommentFormEvent.submitted(),
                            );
                        _textEditingController.clear();
                      },
                      color: WorldOnColors.primary,
                    ),
                    labelText: "Comment",
                    prefixIcon: const Icon(Icons.comment),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
